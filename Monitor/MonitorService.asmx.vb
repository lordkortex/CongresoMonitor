Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports System.Net
Imports System.IO
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports System.Net.Mail
Imports System.Xml

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class MonitorService
    Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function timeOutMethod(Sleep As Integer) As String

        Threading.Thread.Sleep(Sleep)

        Return "Success"


    End Function


    <WebMethod()> _
    Public Function GenerarPdf() As String

        'PAGINA EN DONDE ESTA LA DLL CORREGIDA : http://www.aspsnippets.com/Articles/ASPNet-iTextSharp-SystemSecuritySecurityException-That-assembly-does-not-allow-partially-trusted-callers.aspx

        Dim respuesta As String = ""
        Try
            Dim fs As FileStream = New FileStream("../radiohouse/Chapter1_Example1.pdf", FileMode.Create)
            Dim doc As Document = New Document()
            Dim writer As PdfWriter = PdfWriter.GetInstance(doc, fs)
            doc.Open()
            doc.Add(New Paragraph("Hello World"))
            doc.Close()
            respuesta = "Proceso Satisfactorio"
        Catch ex As Exception
            respuesta = ex.Message.ToString
        End Try

        Return respuesta

    End Function


    <WebMethod()> _
    Function notificacion(filtro As String, usuario As String) As String

        Dim oMyFunctions As New MyFunctions
        oMyFunctions.sendNotification("futbol", "america", "", "", "")


    End Function

    <WebMethod()> _
    Function enviar_email(filtro As String, usuario As String) As String

        filtro = filtro.Replace("/NewDataSet/xmlProyectos", "").Replace("[", "").Replace("]", "").Replace("fecha_creacion", "DATE_FORMAT(se.sesion_fecha_creacion,'%Y-%m-%d')")

        filtro = filtro.Trim()
        Dim SubjectFiltro As String = filtro

        If (filtro <> "") Then
            filtro = " AND " + filtro + " "
        End If



        Dim oMyFunctions As New MyFunctions
        Dim resultProyectos As String = ""

        Dim writerProyectos As StringWriter = New System.IO.StringWriter()


        'oMyFunctions.sqlString += " SELECT p.id_proyecto,IFNULL(p.proyecto_nombre,""."") as proyecto_nombre,se.id_sesiones,IFNULL(se.sesion_nombre,""."") as sesion_nombre,sp.id_sesion_proyecto,IFNULL(l.legislacion_nombre,""."") as legislacion_nombre," + _
        '                         " IFNULL(d.diputado_nombre,""."") as diputado_nombre,IFNULL(cd.comision_dictaminadora_nombre,""."") as comision_dictaminadora_nombre,IFNULL(s.status_nombre,""."")  as status_nombre,IFNULL(p.fecha_creacion,""."")  as fecha_creacion,IFNULL(td.tipo_debate_nombre,""."") as  tipo_debate_nombre,IFNULL(par.partido_nombre,""."") as partido_nombre " +
        '                        "  FROM sesion_proyecto sp ,sesiones se ,proyectos p  ,tipo_debate td  ,legislacion l ,diputado d ,partido par   ,comision_dictaminadora cd   ,status s    " +
        '                        " WHERE sp.id_sesion=se.id_sesiones   AND sp.id_proyecto=p.id_proyecto AND sp.id_tipo_debate=td.id_tipo_debate AND p.id_legislacion=l.id_legislacion AND p.id_proponente=d.id_diputado AND d.id_partido=par.id_partido AND p.id_comision_dictaminadora=cd.id_comision_dictaminadora AND sp.id_status=s.id_status   " +
        '                        filtro + " ORDER BY  sp.fecha_creacion DESC ; "

        oMyFunctions.sqlString = "DELETE FROM reporteProyectosInter WHERE usuario = '" + usuario + "';"

        oMyFunctions.sqlString += " SET group_concat_max_len = 8192;"

        oMyFunctions.sqlString += " INSERT INTO reporteProyectosInter" + _
        " SELECT id_sesion_proyecto, GROUP_CONCAT( CONCAT(""<b>"",d.diputado_nombre,""</b>"","" : "",intervencion_texto) SEPARATOR '<br>'),'" + usuario + "'" + _
        " FROM detalle_intervencion di, diputado d " + _
        " WHERE di.id_diputado = d.id_diputado" + _
        " GROUP BY id_sesion_proyecto;"

        oMyFunctions.sqlString += " INSERT INTO reporteProyectosInter" + _
        " SELECT id_sesion_proyecto, '','" + usuario + "'" + _
        " FROM sesion_proyecto" + _
        " WHERE id_sesion_proyecto NOT IN (SELECT id_sesion_proyecto FROM reporteProyectosInter WHERE usuario ='" + usuario + "');"

        oMyFunctions.mySqlDataR()

        oMyFunctions.sqlString = " SELECT IFNULL(l.legislacion_nombre,""."") as tipo_acto,IFNULL(p.proyecto_nombre,""."") as nombre,IFNULL(p.proyecto_descripcion,""."") as  descripcion,IFNULL(s.status_nombre,""."")  as status,IFNULL(td.tipo_debate_nombre,""."") as  debate," + _
                              " IFNULL(d.diputado_nombre,""."") as proponente,IFNULL(par.partido_nombre,""."") as partido,DATE_FORMAT(se.sesion_fecha_creacion,'%Y-%m-%d')  as fecha_creacion, descripcion as intervenciones " +
                             "  FROM sesion_proyecto sp ,sesiones se ,proyectos p  ,tipo_debate td  ,legislacion l ,diputado d ,partido par   ,comision_dictaminadora cd   ,status s, reporteProyectosInter rpi    " +
                             " WHERE sp.id_sesion=se.id_sesiones   AND sp.id_proyecto=p.id_proyecto AND sp.id_tipo_debate=td.id_tipo_debate AND p.id_legislacion=l.id_legislacion AND p.id_proponente=d.id_diputado AND d.id_partido=par.id_partido AND p.id_comision_dictaminadora=cd.id_comision_dictaminadora AND sp.id_status=s.id_status  AND sp.id_sesion_proyecto = rpi.id_sesion_proyecto AND rpi.usuario ='" + usuario + "'  " +
                             filtro + " ORDER BY  sp.fecha_creacion DESC ; "


        Dim DatasetProyectos = oMyFunctions.mySqlDataR()


        If usuario = "all" Then
            oMyFunctions.sqlString = "" + _
            "SELECT usuario_email FROM usuario"
        Else
            oMyFunctions.sqlString = "" + _
            "SELECT usuario_email FROM usuario WHERE usuario_nombre ='" + usuario + "'"
        End If



        Dim DatasetUsuarios = oMyFunctions.mySqlDataR()


        Dim m As String = DataTableToHTMLTable(DatasetProyectos.Tables(0))



        For Each das As DataRow In DatasetUsuarios.Tables(0).Rows
            Dim objMailMessage As New System.Net.Mail.MailMessage
            With objMailMessage
                .IsBodyHtml = True
                .From = New MailAddress("boletin@miradorlegislativo.com")
                .To.Add(das.Item(0).ToString)
                .Subject = "Monitor Congreso : " + SubjectFiltro
                .Body = m
            End With

            Dim objSMTPClient As New System.Net.Mail.SmtpClient("relay-hosting.secureserver.net", 25)
            objSMTPClient.Credentials = CredentialCache.DefaultNetworkCredentials
            objSMTPClient.DeliveryMethod = SmtpDeliveryMethod.Network
            objSMTPClient.Send(objMailMessage)
        Next


        Return "Reporte Generado con exito."
    End Function

    <WebMethod()> _
    Function enviar_email_intervenciones(filtro As String, usuario As String) As String

        filtro = filtro.Replace("/NewDataSet/xmlIntervenciones", "").Replace("[", "").Replace("]", "").Replace("id_sesion_proyecto", "sp.id_sesion_proyecto")
        filtro = filtro.Trim()
        Dim SubjectFiltro As String = filtro

        If (filtro <> "") Then
            filtro = " WHERE  " + filtro + " "
        End If



        Dim oMyFunctions As New MyFunctions
        Dim resultProyectos As String = ""

        Dim writerProyectos As StringWriter = New System.IO.StringWriter()


        'oMyFunctions.sqlString = ""
        'oMyFunctions.sqlString += " SELECT s.sesion_nombre AS SESION,pr.proyecto_nombre AS PROYECTO,IFNULL(p.partido_nombre,""."") as PARTIDO,CONCAT(' <img src=""',IFNULL(p.partido_imagen,"".""),'"" width=""64"" height=""64""> ' ) as PARTIDO_,di.intervencion_fecha_creacion AS FECHA,IFNULL(d.diputado_nombre,""."") as DIPUTADO, CONCAT(' <img src=""',IFNULL(d.diputado_imagen,"".""),'"" width=""64"" height=""64""> ' ) AS DIPUTADO_ ,REPLACE(di.intervencion_texto, ';', '') as INTERVENCION"
        'oMyFunctions.sqlString += " FROM detalle_intervencion di LEFT JOIN diputado d on di.id_diputado=d.id_diputado LEFT JOIN partido p on d.id_partido=p.id_partido LEFT JOIN sesion_proyecto sp ON di.id_sesion_proyecto = sp.id_sesion_proyecto LEFT JOIN sesiones s ON sp.id_sesion = s.id_sesiones LEFT JOIN proyectos pr ON sp.id_proyecto = pr.id_proyecto " + filtro + "  order by intervencion_fecha_creacion DESC "

        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT s.sesion_nombre AS SESION,pr.proyecto_nombre AS PROYECTO,IFNULL(p.partido_nombre,""."") as PARTIDO,di.intervencion_fecha_creacion AS FECHA,IFNULL(d.diputado_nombre,""."") as DIPUTADO,REPLACE(di.intervencion_texto, ';', '') as INTERVENCION"
        oMyFunctions.sqlString += " FROM detalle_intervencion di LEFT JOIN diputado d on di.id_diputado=d.id_diputado LEFT JOIN partido p on d.id_partido=p.id_partido LEFT JOIN sesion_proyecto sp ON di.id_sesion_proyecto = sp.id_sesion_proyecto LEFT JOIN sesiones s ON sp.id_sesion = s.id_sesiones LEFT JOIN proyectos pr ON sp.id_proyecto = pr.id_proyecto " + filtro + "  order by intervencion_fecha_creacion DESC "


        Dim DatasetProyectos = oMyFunctions.mySqlDataR()

        oMyFunctions.sqlString = "" + _
        "SELECT usuario_email FROM usuario WHERE usuario_nombre ='" + usuario + "'"

        Dim DatasetUsuarios = oMyFunctions.mySqlDataR()


        Dim m As String = DataTableToHTMLTable(DatasetProyectos.Tables(0))


        Dim objMailMessage As New System.Net.Mail.MailMessage
        'Dim m As String = ""
        'm += "<table border=""1"" style=""background-color:#00CC33;border-collapse:collapse;border:1px solid #FFCC00;color:#CCFFFF;width:100%"" cellpadding=""3"" cellspacing=""3""><tr><td>Table Cell</td><td>Table Cell</td></tr><tr><td>Table Cell</td><td>Table Cell</td></tr></table>"

        With objMailMessage
            .IsBodyHtml = True
            .From = New MailAddress("consultas@mipotra.com")
            .To.Add(DatasetUsuarios.Tables(0).Rows(0).Item(0).ToString)
            .Subject = "Monitor Congreso : " + SubjectFiltro
            .Body = m
        End With

        Dim objSMTPClient As New System.Net.Mail.SmtpClient("relay-hosting.secureserver.net", 25)
        objSMTPClient.Credentials = CredentialCache.DefaultNetworkCredentials
        objSMTPClient.DeliveryMethod = SmtpDeliveryMethod.Network
        objSMTPClient.Send(objMailMessage)

        Return "Reporte Generado con exito."
    End Function

    <WebMethod()> _
    Function backUpProyecto(ByVal xmlProyecto As String, ByVal xmlIntervencion As String) As String
        Dim Mensaje As String = ""
        Try
            If (xmlProyecto <> "" Or xmlIntervencion <> "") Then
                insertProyecto(xmlProyecto)
                insertIntervencion(xmlIntervencion)
            End If
            Mensaje = "SUCCESS"
        Catch ex As Exception
            Mensaje = ex.Message.ToString
        End Try

        Return Mensaje


    End Function

    <WebMethod()> _
    Function insertProyecto(ByVal myXMl As String) As String

        Dim StatusOperacion As String = ""
        Dim oMyFunctions As New MyFunctions

        Try
            Dim xDoc As XmlDocument = New XmlDocument()
            xDoc.LoadXml(myXMl)
            Dim xNodeList As XmlNodeList = xDoc.SelectNodes("proyectos/proyecto")


            For Each XmlNodeItem As XmlNode In xNodeList


                Dim id As String = XmlNodeItem("id").InnerText
                Dim sesion As String = XmlNodeItem("sesion").InnerText
                Dim nombre As String = XmlNodeItem("nombre").InnerText
                Dim tipoacto As String = XmlNodeItem("tipoacto").InnerText
                Dim debate As String = XmlNodeItem("debate").InnerText
                Dim status As String = XmlNodeItem("status").InnerText
                Dim comision As String = XmlNodeItem("comision").InnerText
                Dim partido As String = XmlNodeItem("partido").InnerText
                Dim proponente As String = XmlNodeItem("proponente").InnerText
                Dim fecha As String = XmlNodeItem("fecha").InnerText
                Dim descripcion As String = XmlNodeItem("descripcion").InnerText

                Dim combinacion As String = nombre + tipoacto + debate + status + comision + partido + proponente + descripcion



                oMyFunctions.sqlString = ""
                oMyFunctions.sqlString += " TRUNCATE TABLE prueba "
                oMyFunctions.mySqlDataR()


                oMyFunctions.sqlString = ""
                oMyFunctions.sqlString += " INSERT INTO prueba (id,sesion,nombre,tipoacto,debate,status,comision,partido,proponente,fecha) VALUES ('" + id + "','" + sesion + "','" + nombre + "','" + tipoacto + "','" + debate + "','" + status + "','" + comision + "','" + partido + "','" + proponente + "','" + fecha + "')"
                oMyFunctions.mySqlDataR()


                oMyFunctions.sqlString = ""
                oMyFunctions.sqlString += " SELECT IFNULL(s.id_sesiones,""0"") as id_sesiones," + _
                                    " IFNULL(pr.id_proyecto,""0"") as id_proyecto,IFNULL(l.id_legislacion,""0"") as id_legislacion," + _
                                    " IFNULL(td.id_tipo_debate,""0"") as id_tipo_debate,IFNULL(st.id_status,""0"") as id_status," + _
                                    " IFNULL(d.id_diputado,""0"")  as id_diputado," + _
                                    " IFNULL(d.id_partido,""0"") as id_partido ,IFNULL(c.id_comision_dictaminadora,""0"") as id_comision_dictaminadora" + _
                                    " FROM prueba p" + _
                                    " LEFT JOIN sesiones s ON p.sesion = s.sesion_nombre" + _
                                    " LEFT JOIN proyectos pr ON p.nombre = pr.proyecto_nombre" + _
                                    " LEFT JOIN legislacion l ON p.tipoacto = l.legislacion_nombre" + _
                                    " LEFT JOIN tipo_debate td ON p.debate = td.tipo_debate_nombre" + _
                                    " LEFT JOIN status st ON p.status = st.status_nombre" + _
                                    " LEFT JOIN diputado d ON p.proponente = d.diputado_nombre" + _
                                    " LEFT JOIN comision_dictaminadora c ON p.comision = c.comision_dictaminadora_nombre"


                Dim DataTableGeneral As DataSet = oMyFunctions.mySqlDataR()


                'BUSCAR LA SESION
                If (DataTableGeneral.Tables(0).Rows(0).Item("id_sesiones") = "0") Then
                    oMyFunctions.sqlString = ""
                    oMyFunctions.sqlString += " INSERT INTO sesiones (sesion_nombre,sesion_fecha_creacion,descripcion_corta,descripcion_larga) VALUES ('" + sesion + "','" + fecha + "','Fecha','" + fecha + "')"
                    oMyFunctions.mySqlDataR()
                End If

                'BUSCAR LEGISLACION
                If (DataTableGeneral.Tables(0).Rows(0).Item("id_legislacion") = "0") Then
                    oMyFunctions.sqlString = ""
                    oMyFunctions.sqlString += " INSERT INTO legislacion (legislacion_nombre) VALUES ('" + tipoacto + "')"
                    oMyFunctions.mySqlDataR()
                End If

                'BUSCAR TIPO DE DEBATE
                If (DataTableGeneral.Tables(0).Rows(0).Item("id_tipo_debate") = "0") Then
                    oMyFunctions.sqlString = ""
                    oMyFunctions.sqlString += " INSERT INTO tipo_debate (tipo_debate_nombre) VALUES ('" + debate + "')"
                    oMyFunctions.mySqlDataR()
                End If

                'BUSCAR PROPONENTE Y SU PARTIDO
                If (DataTableGeneral.Tables(0).Rows(0).Item("id_diputado") = "0") Then
                    oMyFunctions.sqlString = ""
                    oMyFunctions.sqlString += " INSERT INTO diputado (diputado_nombre,id_partido) VALUES ('" + proponente + "',0)"
                    oMyFunctions.mySqlDataR()
                End If

                'BUSCAR COMISION
                If (DataTableGeneral.Tables(0).Rows(0).Item("id_comision_dictaminadora") = "0") Then
                    oMyFunctions.sqlString = ""
                    oMyFunctions.sqlString += " INSERT INTO comision_dictaminadora (comision_dictaminadora_nombre) VALUES ('" + comision + "')"
                    oMyFunctions.mySqlDataR()
                End If

                'BUSCAR STATUS
                If (DataTableGeneral.Tables(0).Rows(0).Item("id_status") = "0") Then
                    oMyFunctions.sqlString = ""
                    oMyFunctions.sqlString += " INSERT INTO status (status_nombre) VALUES ('" + status + "')"
                    oMyFunctions.mySqlDataR()
                End If

                'VERIFICA SI EXISTE UN PROYECTO 
                If (DataTableGeneral.Tables(0).Rows(0).Item("id_proyecto") = "0") Then


                    'INSERTAR PROYECO
                    oMyFunctions.sqlString = "INSERT INTO proyectos (proyecto_nombre,id_legislacion,id_proponente,id_comision_dictaminadora,id_status,fecha_creacion,proyecto_descripcion) "
                    oMyFunctions.sqlString += " SELECT '" + nombre + "',l.id_legislacion,d.id_diputado,c.id_comision_dictaminadora,st.id_status,'" + fecha + "','" + descripcion + "'" + _
                                        " FROM prueba p" + _
                                        " LEFT JOIN sesiones s ON p.sesion = s.sesion_nombre" + _
                                        " LEFT JOIN proyectos pr ON p.nombre = pr.proyecto_nombre" + _
                                        " LEFT JOIN legislacion l ON p.tipoacto = l.legislacion_nombre" + _
                                        " LEFT JOIN tipo_debate td ON p.debate = td.tipo_debate_nombre" + _
                                        " LEFT JOIN status st ON p.status = st.status_nombre" + _
                                        " LEFT JOIN diputado d ON p.proponente = d.diputado_nombre" + _
                                        " LEFT JOIN comision_dictaminadora c ON p.comision = c.comision_dictaminadora_nombre"
                    oMyFunctions.mySqlDataR()
                End If

                Try

                    oMyFunctions.sqlString = "INSERT INTO sesion_proyecto (id_sesion,id_proyecto,id_status,id_tipo_debate) "
                    oMyFunctions.sqlString += " SELECT s.id_sesiones,pr.id_proyecto,st.id_status,td.id_tipo_debate" + _
                                        " FROM prueba p" + _
                                        " LEFT JOIN sesiones s ON p.sesion = s.sesion_nombre" + _
                                        " LEFT JOIN proyectos pr ON p.nombre = pr.proyecto_nombre" + _
                                        " LEFT JOIN legislacion l ON p.tipoacto = l.legislacion_nombre" + _
                                        " LEFT JOIN tipo_debate td ON p.debate = td.tipo_debate_nombre" + _
                                        " LEFT JOIN status st ON p.status = st.status_nombre" + _
                                        " LEFT JOIN diputado d ON p.proponente = d.diputado_nombre" + _
                                        " LEFT JOIN comision_dictaminadora c ON p.comision = c.comision_dictaminadora_nombre"
                    oMyFunctions.mySqlDataR()
                    StatusOperacion = "SUCCESS"

                Catch ex As Exception
                    StatusOperacion = ex.Message
                End Try

                EnviarPalabra(combinacion, fecha, "proyecto")


            Next
        Catch ex As Exception
            StatusOperacion = ex.Message.ToString
        End Try

        oMyFunctions.sqlString = "INSERT INTO detalle_intervencion_log (xml,fecha,status) "
        oMyFunctions.sqlString += " VALUES('" + myXMl + "',NOW(),'" + StatusOperacion + "') "

        oMyFunctions.mySqlDataR()








        Return StatusOperacion


    End Function

    <WebMethod()> _
    Function insertIntervencion(ByVal myXMl As String) As String


        Dim xDoc As XmlDocument = New XmlDocument()
        xDoc.LoadXml(myXMl)
        Dim xNodeList As XmlNodeList = xDoc.SelectNodes("intervenciones/intervencion")
        Dim oMyFunctions As New MyFunctions

        For Each XmlNodeItem As XmlNode In xNodeList
            Dim id As String = XmlNodeItem("id").InnerText
            Dim nombre As String = XmlNodeItem("nombre").InnerText
            Dim debate As String = XmlNodeItem("debate").InnerText
            Dim diputado As String = XmlNodeItem("diputado").InnerText
            Dim intervencion As String = XmlNodeItem("textointervencion").InnerText
            Dim fecha As String = XmlNodeItem("fecha").InnerText

            'oMyFunctions.sqlString += " INSERT INTO pruebaintervencion (id,nombre,debate,diputado,intervencion,fecha) VALUES ('" + id + "','" + nombre + "','" + debate + "','" + diputado + "','" + intervencion + "','" + fecha + "')"

            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString = "SELECT id_sesion_proyecto "
            oMyFunctions.sqlString += " FROM sesion_proyecto sp "
            oMyFunctions.sqlString += " LEFT JOIN proyectos p ON  sp.id_proyecto= p.id_proyecto "
            oMyFunctions.sqlString += " LEFT JOIN tipo_debate td ON sp.id_tipo_debate=td.id_tipo_debate"
            oMyFunctions.sqlString += " WHERE p.proyecto_nombre = '" + nombre + "'"
            oMyFunctions.sqlString += " AND td.tipo_debate_nombre ='" + debate + "'"
            Dim DatasetProyecto As DataSet = oMyFunctions.mySqlDataR()
            Dim id_sesion_proyecto As String = DatasetProyecto.Tables(0).Rows(0).Item(0)

            Dim id_diputado As String = ""

            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString = "SELECT id_diputado from diputado where diputado_nombre='" + diputado + "'"
            Dim DatasetDiputado As DataSet = oMyFunctions.mySqlDataR()
            If (DatasetDiputado.Tables(0).Rows.Count > 0) Then
                id_diputado = DatasetDiputado.Tables(0).Rows(0).Item(0)
            Else
                oMyFunctions.sqlString = ""
                oMyFunctions.sqlString = "INSERT INTO  diputado (diputado_nombre) VALUES('" + diputado + "')"
                oMyFunctions.mySqlDataR()

                oMyFunctions.sqlString = ""
                oMyFunctions.sqlString = "SELECT id_diputado from diputado where diputado_nombre='" + diputado + "'"
                DatasetDiputado = oMyFunctions.mySqlDataR()
                id_diputado = DatasetDiputado.Tables(0).Rows(0).Item(0)
            End If


            oMyFunctions.sqlString = ""
            'oMyFunctions.sqlString += " INSERT INTO pruebaintervencion (id,nombre,debate,diputado,intervencion,fecha) VALUES ('" + id + "','" + nombre + "','" + debate + "','" + diputado + "','" + intervencion + "','" + fecha + "')"
            oMyFunctions.sqlString += " INSERT INTO detalle_intervencion (id_sesion_proyecto,id_diputado,intervencion_texto,intervencion_fecha_creacion) VALUES (" + id_sesion_proyecto + "," + id_diputado + ",'" + intervencion + "','" + fecha + "')"
            oMyFunctions.mySqlDataR()

            EnviarPalabra(intervencion, fecha, "Intervencion")

        Next


        Return "SUCCESS"

    End Function

    <WebMethod()> _
    Public Function monitorLogin(ByVal monitorUsuarioNombre As String, ByVal monitorUsuarioContrasena As String, ByVal monitorGooleID As String, ByVal monitorDeviceID As String) As String

        Dim oMyFunctions As New MyFunctions

        Dim resultFinal As String = ""
        Dim allowLogin As Boolean

        Dim resultSesiones As String = ""
        Dim resultProyectos As String = ""
        Dim resultIntervenciones As String = ""
        Dim resultTipoActos As String = ""
        Dim resultDebates As String = ""
        Dim resultStatus As String = ""
        Dim resultProponentes As String = ""
        Dim resultPartidos As String = ""
        Dim resultComisiones As String = ""
        Dim resultComisionesDistinct As String = ""
        Dim resultProponentesPorComision As String = ""
        Dim resultSesionesFiltro As String = ""

        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT usuario_google,perfil,id_usuario,device FROM usuario WHERE usuario_nombre='" + monitorUsuarioNombre + "' and usuario_contrasena='" + monitorUsuarioContrasena + "'"
        Dim DatasetResultados = oMyFunctions.mySqlDataR()

        If DatasetResultados.Tables(0).Rows.Count > 0 Then

            If DatasetResultados.Tables(0).Rows(0).Item(3).ToString.Trim <> "" Then
                If monitorDeviceID = DatasetResultados.Tables(0).Rows(0).Item(3) Then
                    allowLogin = True
                Else
                    allowLogin = False
                End If
            Else
                allowLogin = True
            End If

            If allowLogin Then

                oMyFunctions.sqlString = ""
                oMyFunctions.sqlString += " UPDATE usuario SET device='" + monitorDeviceID + "',usuario_google='" + monitorGooleID + "' WHERE usuario_nombre='" + monitorUsuarioNombre + "' and usuario_contrasena='" + monitorUsuarioContrasena + "'"
                oMyFunctions.mySqlDataR()



                'SESIONES
                resultSesiones = retornarSesiones()

                'PROYECTOS
                resultProyectos = retornarProyectos()

                'INTERVENCIONES
                resultIntervenciones = retornarIntervenciones()

                'LEGISLACION O TIPO DE ACTO
                Dim writerTipoActos As StringWriter = New System.IO.StringWriter()
                oMyFunctions.sqlString = ""
                oMyFunctions.sqlString += " SELECT id_legislacion,legislacion_nombre FROM legislacion"
                Dim DatasetSTipoActos = oMyFunctions.mySqlDataR()
                DatasetSTipoActos.Tables(0).TableName = "xmlTipoActos"
                DatasetSTipoActos.Tables(0).WriteXml(writerTipoActos, XmlWriteMode.WriteSchema, False)
                resultTipoActos = writerTipoActos.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "").Replace(";", "")

                'DEBATES
                Dim writerDebates As StringWriter = New System.IO.StringWriter()
                oMyFunctions.sqlString = ""
                oMyFunctions.sqlString += " SELECT id_tipo_debate,tipo_debate_nombre FROM tipo_debate"
                Dim DatasetSDebates = oMyFunctions.mySqlDataR()
                DatasetSDebates.Tables(0).TableName = "xmlDebates"
                DatasetSDebates.Tables(0).WriteXml(writerDebates, XmlWriteMode.WriteSchema, False)
                resultDebates = writerDebates.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "").Replace(";", "")

                'STATUS
                Dim writerStatus As StringWriter = New System.IO.StringWriter()
                oMyFunctions.sqlString = ""
                oMyFunctions.sqlString += " SELECT id_status,status_nombre FROM status"
                Dim DatasetSStatus = oMyFunctions.mySqlDataR()
                DatasetSStatus.Tables(0).TableName = "xmlStatus"
                DatasetSStatus.Tables(0).WriteXml(writerStatus, XmlWriteMode.WriteSchema, False)
                resultStatus = writerStatus.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "").Replace(";", "")

                'DIPUTADOS
                resultProponentes = retornarDiputados()


                'PARTIDOS
                Dim writerPartidos As StringWriter = New System.IO.StringWriter()
                oMyFunctions.sqlString = ""
                oMyFunctions.sqlString += " SELECT id_partido,partido_nombre,"""" as Data,IFNULL(descripcion_corta,"" "") as descripcion_corta , IFNULL(descripcion_larga,""."") as descripcion_larga,partido_imagen FROM partido where activo = 1"
                Dim DatasetSPartidos = oMyFunctions.mySqlDataR()
                DatasetSPartidos.Tables(0).TableName = "xmlPartidos"
                DatasetSPartidos.Tables(0).WriteXml(writerPartidos, XmlWriteMode.WriteSchema, False)
                resultPartidos = writerPartidos.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "").Replace(";", "")

                'COMISIONES
                resultComisiones = retornarComisiones()


                'COMISIONES DISTINCT
                resultComisionesDistinct = retornarComisionesDistinct()

                'DIPUTADOS POR COMISION
                Dim writerProponentesPorComision As StringWriter = New System.IO.StringWriter()
                oMyFunctions.sqlString = ""
                oMyFunctions.sqlString += " SELECT d.id_diputado,d.diputado_nombre,cd.comision_dictaminadora_nombre,IFNULL(d.descripcion_corta,""."") as descripcion_corta , IFNULL(d.descripcion_larga,""."") as descripcion_larga,d.diputado_imagen FROM diputado d LEFT JOIN comision_dicatminadora_diputado cdd on d.id_diputado=cdd.id_diputado LEFT JOIN comision_dictaminadora cd ON cd.id_comision_dictaminadora=cdd.id_comision_dictaminadora"
                Dim DatasetSProponentesProComision = oMyFunctions.mySqlDataR()
                DatasetSProponentesProComision.Tables(0).TableName = "xmlProponentesProComision"
                DatasetSProponentesProComision.Tables(0).WriteXml(writerProponentesPorComision, XmlWriteMode.WriteSchema, False)
                resultProponentesPorComision = writerProponentesPorComision.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "").Replace(";", "")

                'INTERVENCIONES DE UN USUARIO ESPECIFICO
                Dim resultIntervencionesPorUsuario As String = retornarIntervencionesPorUsuario(monitorUsuarioNombre)

                'SESIONES
                resultSesionesFiltro = retornarSesionesFiltro()



                resultFinal = resultSesiones + ";" + resultProyectos + ";" + resultIntervenciones + ";" + resultTipoActos + _
                               ";" + resultDebates + ";" + resultStatus + ";" + resultProponentes + ";" + resultPartidos + ";" + _
                resultComisiones + ";" + resultComisionesDistinct + ";" + resultProponentesPorComision + ";" + DatasetResultados.Tables(0).Rows(0).Item("perfil") + ";" + resultIntervencionesPorUsuario + ";" + resultSesionesFiltro
                'resultFinal = resultSesiones
            Else
                resultFinal = "Autenticacion Invalida"
            End If

        Else
            resultFinal = "Autenticacion Invalida"

        End If

        Return resultFinal

    End Function

    Private Function EnviarPalabra(ByVal txtEnvio As String, ByVal txtFecha As String, ByVal txtTabla As String)

        Dim DeviceId As String = ""
        Dim texto As String = txtEnvio.ToLower()
        Dim oMyFunctions As New MyFunctions



        If (txtTabla = "Intervencion") Then
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " SELECT max(id_detalle_intervencion) FROM detalle_intervencion order by id_detalle_intervencion ASC"
        Else
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " SELECT max(id_proyecto) FROM proyectos order by id_proyecto ASC"
        End If

        Dim DataIntervencion As DataSet = oMyFunctions.mySqlDataR()

        Dim Id_intervencion As String = DataIntervencion.Tables(0).Rows(0).Item(0)


        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT pc.palabra_clave_a,pc.palabra_clave_b,pc.palabra_clave_c,pc.id_usuario,u.usuario_google,u.usuario_nombre FROM palabra_clave pc,usuario u WHERE pc.id_usuario=u.id_usuario"
        Dim MyData = oMyFunctions.mySqlDataR()


        If MyData.Tables.Count > 0 AndAlso MyData.Tables(0).Rows.Count > 0 Then
            For Each row In MyData.Tables(0).Rows
                If row("usuario_google").ToString <> "" Then

                    DeviceId = row("usuario_google").ToString

                    Dim palabraA As String = row("palabra_clave_a").ToString.ToLower()
                    Dim palabraB As String = row("palabra_clave_b").ToString.ToLower()
                    Dim palabraC As String = row("palabra_clave_c").ToString.ToLower()

                    If palabraA <> "" And palabraB <> "" And palabraC <> "" Then
                        If texto.Contains(palabraA) And texto.Contains(palabraB) And texto.Contains(palabraC) Then
                            oMyFunctions.sendNotification("CongresoMonitor : " + row("usuario_nombre").ToString, txtEnvio.ToString, DeviceId, Id_intervencion, "AIzaSyDgT-uvNHjqrrrNqrHnmkqR19cLsH-2glw")
                            oMyFunctions.sqlString = ""
                            oMyFunctions.sqlString += " INSERT INTO intervencion_usuario(id_detalle_intervencion,id_usuario,fecha,tipo) VALUES(" + Id_intervencion + "," + row("id_usuario").ToString + ",'" + txtFecha + "','" & txtTabla & "')"
                            oMyFunctions.mySqlDataR()

                        End If
                    Else
                        If palabraA <> "" And palabraB <> "" Then
                            If texto.Contains(palabraA) And texto.Contains(palabraB) Then
                                oMyFunctions.sendNotification("CongresoMonitor : " + row("usuario_nombre").ToString, txtEnvio.ToString, DeviceId, Id_intervencion, "AIzaSyDgT-uvNHjqrrrNqrHnmkqR19cLsH-2glw")
                                oMyFunctions.sqlString = ""
                                oMyFunctions.sqlString += " INSERT INTO intervencion_usuario(id_detalle_intervencion,id_usuario,fecha,tipo) VALUES(" + Id_intervencion + "," + row("id_usuario").ToString + ",'" + txtFecha + "','" & txtTabla & "')"
                                oMyFunctions.mySqlDataR()
                            End If
                        Else
                            If palabraA <> "" Then
                                If texto.Contains(palabraA) Then
                                    oMyFunctions.sendNotification("CongresoMonitor : " + row("usuario_nombre").ToString, txtEnvio.ToString, DeviceId, Id_intervencion, "AIzaSyDgT-uvNHjqrrrNqrHnmkqR19cLsH-2glw")
                                    oMyFunctions.sqlString = ""
                                    oMyFunctions.sqlString += " INSERT INTO intervencion_usuario(id_detalle_intervencion,id_usuario,fecha,tipo) VALUES(" + Id_intervencion + "," + row("id_usuario").ToString + ",'" + txtFecha + "','" & txtTabla & "')"
                                    oMyFunctions.mySqlDataR()
                                End If
                            End If
                        End If
                    End If
                End If
            Next
        End If

        Return ""



    End Function

    <WebMethod()> _
    Public Function enviarNotificacion()
        Dim oMyFunctions As New MyFunctions

        oMyFunctions.sendNotification("Mensaje Title Ficohsa", "Message Text Ficohsa", "APA91bFb8RwgAdvNSOiVuVDH2GxwfwREAfsDNH83uKeYfihrn3Y7SrfRHwaugncTHj93bmPMvSZjjSzuPmTECAr0fS-nJBWemr2sI3-U-SPDYqGa-S0_-bgSWKnMYDIb1pr6sBdkx5Cz", 1, "AIzaSyBIzTlvH8XYt9s-XsQawWZ1i8aBONLk6IY")

    End Function


    <WebMethod()> _
    Public Function retornarSesiones()

        Dim resultSesiones As String = ""
        Dim writerSesiones As StringWriter = New System.IO.StringWriter()
        Dim DatasetSsesiones = retornarSesionesObject()
        DatasetSsesiones.Tables(0).WriteXml(writerSesiones, XmlWriteMode.WriteSchema, False)
        resultSesiones = writerSesiones.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "")

        Return resultSesiones


    End Function

    <WebMethod()> _
    Public Function retornarSesionesObject() As DataSet

        Dim oMyFunctions As New MyFunctions
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT sesion_nombre,"""" as id,IFNULL(descripcion_corta,"""") as descripcion_corta , DATE_FORMAT(sesion_fecha_creacion,'%Y-%m-%d') as descripcion_larga FROM sesiones ORDER BY  sesion_fecha_creacion DESC"
        Dim DatasetSsesiones = oMyFunctions.mySqlDataR()
        DatasetSsesiones.Tables(0).TableName = "xmlSesiones"

        Return DatasetSsesiones


    End Function

    <WebMethod()> _
    Public Function retornarSeveralTables(usuario_nombre As String, password As String) As DataSet


        Dim oMyFunctions As New MyFunctions

        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT usuario_google,perfil,id_usuario,device FROM usuario WHERE usuario_nombre='" + usuario_nombre + "' and usuario_contrasena='" + password + "'"
        Dim DatasetResultados = oMyFunctions.mySqlDataR()

        Dim DatasetSsesiones As New DataSet



        If DatasetResultados.Tables(0).Rows.Count > 0 Then






            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " SELECT sesion_nombre,"""" as id,IFNULL(descripcion_corta,"""") as descripcion_corta , DATE_FORMAT(sesion_fecha_creacion,'%Y-%m-%d') as descripcion_larga FROM sesiones ORDER BY  sesion_fecha_creacion DESC;"

            oMyFunctions.sqlString += " SELECT distinct p.id_proyecto,IFNULL(p.proyecto_nombre,""."") as proyecto_nombre,se.id_sesiones,IFNULL(se.sesion_nombre,""."") as sesion_nombre,sp.id_sesion_proyecto,IFNULL(l.legislacion_nombre,""."") as legislacion_nombre," + _
                             " IFNULL(d.diputado_nombre,""."") as diputado_nombre,IFNULL(cd.comision_dictaminadora_nombre,""."") as comision_dictaminadora_nombre,IFNULL(s.status_nombre,""."")  as status_nombre,DATE_FORMAT(sesion_fecha_creacion,'%Y-%m-%d')  as fecha_creacion,IFNULL(td.tipo_debate_nombre,""."") as  tipo_debate_nombre,IFNULL(par.partido_nombre,""."") as partido_nombre,IFNULL(p.proyecto_descripcion,""."") as proyecto_descripcion  " +
                            "  FROM sesion_proyecto sp ,sesiones se ,proyectos p  ,tipo_debate td  ,legislacion l ,diputado d ,partido par   ,comision_dictaminadora cd   ,status s    " +
                            " WHERE sp.id_sesion=se.id_sesiones   AND sp.id_proyecto=p.id_proyecto AND sp.id_tipo_debate=td.id_tipo_debate AND p.id_legislacion=l.id_legislacion AND p.id_proponente=d.id_diputado AND d.id_partido=par.id_partido AND p.id_comision_dictaminadora=cd.id_comision_dictaminadora AND sp.id_status=s.id_status   " +
                            " ORDER BY  sp.fecha_creacion DESC ; "

            oMyFunctions.sqlString += " SELECT di.id_detalle_intervencion,di.id_sesion_proyecto,IFNULL(di.id_diputado,""0"") as id_diputado ,IFNULL(d.id_partido,""0"") as id_partido,IFNULL(p.partido_nombre,""."") as partido_nombre,IFNULL(p.partido_imagen,""."") as partido_imagen,REPLACE(di.intervencion_texto, ';', '') as intervencion_texto,DATE_FORMAT(sesion_fecha_creacion,'%Y-%m-%d') as intervencion_fecha_creacion,IFNULL(d.diputado_nombre,""."") as diputado_nombre,IFNULL(d.diputado_imagen,""."") as diputado_imagen,sp.id_sesion,sp.id_proyecto,s.sesion_nombre,pr.proyecto_nombre "
            oMyFunctions.sqlString += " FROM detalle_intervencion di, diputado d , partido p ,sesion_proyecto sp , sesiones s , proyectos pr  WHERE di.id_diputado=d.id_diputado AND d.id_partido=p.id_partido AND di.id_sesion_proyecto = sp.id_sesion_proyecto AND sp.id_sesion = s.id_sesiones AND sp.id_proyecto = pr.id_proyecto order by intervencion_fecha_creacion DESC; "

            oMyFunctions.sqlString += " SELECT id_legislacion,legislacion_nombre FROM legislacion;"

            oMyFunctions.sqlString += " SELECT id_tipo_debate,tipo_debate_nombre FROM tipo_debate;"

            oMyFunctions.sqlString += " SELECT id_status,status_nombre FROM status;"

            oMyFunctions.sqlString += " SELECT d.id_diputado,d.diputado_nombre,p.partido_nombre,IFNULL(d.descripcion_corta,""."") as descripcion_corta , IFNULL(d.descripcion_larga,""."") as descripcion_larga,d.diputado_imagen,LOWER(d.diputado_nombre) as diputado_nombre_lower FROM diputado d LEFT JOIN partido p on d.id_partido=p.id_partido where d.diputado_activo=1;"

            oMyFunctions.sqlString += " SELECT id_partido,partido_nombre,"""" as Data,IFNULL(descripcion_corta,"" "") as descripcion_corta , IFNULL(descripcion_larga,""."") as descripcion_larga,partido_imagen FROM partido where activo = 1;"

            oMyFunctions.sqlString += " SELECT cdd.id_comision_dictaminadora,IFNULL(cd.comision_dictaminadora_nombre,""."") as comision_dictaminadora_nombre,IFNULL(d.diputado_nombre,""."")  as diputado_nombre,IFNULL(p.partido_nombre,""."") as partido_nombre " + _
                                       " FROM comision_dicatminadora_diputado  cdd LEFT JOIN  comision_dictaminadora cd  ON cd.id_comision_dictaminadora=cdd.id_comision_dictaminadora " + _
                                       " LEFT JOIN diputado d on cdd.id_diputado=d.id_diputado LEFT JOIN partido p on d.id_partido=p.id_partido WHERE IFNULL(d.diputado_nombre,""."") <>"".""  AND cd.activo=1;"

            oMyFunctions.sqlString += " SELECT cd.id_comision_dictaminadora,IFNULL(cd.comision_dictaminadora_nombre,""."") as comision_dictaminadora_nombre, " + _
                                       " IFNULL(descripcion_corta,""."") as descripcion_corta , IFNULL(descripcion_larga,""."") as descripcion_larga,'' as var,imagen,cd.activo,LOWER(cd.comision_dictaminadora_nombre) as comision_dictaminadora_nombre_lower FROM  comision_dictaminadora cd WHERE cd.activo=1;"


            oMyFunctions.sqlString += " SELECT d.id_diputado,d.diputado_nombre,cd.comision_dictaminadora_nombre,IFNULL(d.descripcion_corta,""."") as descripcion_corta , IFNULL(d.descripcion_larga,""."") as descripcion_larga,d.diputado_imagen FROM diputado d LEFT JOIN comision_dicatminadora_diputado cdd on d.id_diputado=cdd.id_diputado LEFT JOIN comision_dictaminadora cd ON cd.id_comision_dictaminadora=cdd.id_comision_dictaminadora;"

            oMyFunctions.sqlString += " SELECT di.id_detalle_intervencion,di.id_sesion_proyecto,IFNULL(di.id_diputado,""0"") as id_diputado ,IFNULL(d.id_partido,""0"") as id_partido,IFNULL(p.partido_nombre,""."") as partido_nombre,IFNULL(p.partido_imagen,""."") as partido_imagen,REPLACE(di.intervencion_texto, ';', '') as intervencion_texto,DATE_FORMAT(s.sesion_fecha_creacion,'%Y-%m-%d') as intervencion_fecha_creacion,IFNULL(d.diputado_nombre,""."") as diputado_nombre,IFNULL(d.diputado_imagen,""."") as diputado_imagen,sp.id_sesion,sp.id_proyecto,s.sesion_nombre,pr.proyecto_nombre "
            oMyFunctions.sqlString += " FROM detalle_intervencion di , diputado d , partido p , sesion_proyecto sp , sesiones s , proyectos pr WHERE di.id_detalle_intervencion IN (SELECT id_detalle_intervencion FROM intervencion_usuario iu LEFT JOIN usuario u ON iu.id_usuario=u.id_usuario WHERE   iu.tipo ='Intervencion' AND u.usuario_nombre = '" + usuario_nombre + "' )  "
            oMyFunctions.sqlString += " AND di.id_diputado=d.id_diputado AND d.id_partido=p.id_partido AND di.id_sesion_proyecto = sp.id_sesion_proyecto AND sp.id_sesion = s.id_sesiones AND sp.id_proyecto = pr.id_proyecto "

            oMyFunctions.sqlString += " UNION"

            oMyFunctions.sqlString += " SELECT pr.id_proyecto as id_detalle_intervencion, 0 as id_sesion_proyecto,IFNULL(pr.id_proponente,""0"") as id_diputado ,IFNULL(d.id_partido,""0"") as id_partido,"
            oMyFunctions.sqlString += " IFNULL(p.partido_nombre,""."") as partido_nombre,IFNULL(p.partido_imagen,""."") as partido_imagen,REPLACE(pr.proyecto_descripcion, ';', '') as intervencion_texto,"
            oMyFunctions.sqlString += " DATE_FORMAT(s.sesion_fecha_creacion,'%Y-%m-%d') as intervencion_fecha_creacion,IFNULL(d.diputado_nombre,""."") as diputado_nombre,"
            oMyFunctions.sqlString += " IFNULL(d.diputado_imagen,""."") as diputado_imagen,0 as id_sesion,pr.id_proyecto as id_poryecto_p,s.sesion_nombre,pr.proyecto_nombre "
            oMyFunctions.sqlString += " FROM proyectos pr , diputado d , partido p , sesiones s ,sesion_proyecto  sp "
            oMyFunctions.sqlString += " WHERE pr.id_proyecto IN (SELECT id_detalle_intervencion "
            oMyFunctions.sqlString += " FROM intervencion_usuario iu LEFT JOIN usuario u ON iu.id_usuario=u.id_usuario WHERE   iu.tipo ='proyecto' AND u.usuario_nombre = 'malcolm' )  "
            oMyFunctions.sqlString += " AND pr.id_proponente=d.id_diputado AND d.id_partido=p.id_partido  AND sp.id_proyecto = pr.id_proyecto AND sp.id_sesion=s.id_sesiones ;"

            oMyFunctions.sqlString += " SELECT id_sesiones,DATE_FORMAT(sesion_fecha_creacion,'%Y-%m-%d') as descripcion_larga,IFNULL(descripcion_corta,"""") as descripcion_corta , DATE_FORMAT(sesion_fecha_creacion,'%Y-%m-%d') as descripcion_larga_p FROM sesiones ORDER BY  sesion_fecha_creacion DESC;"


            'Dim DatasetSIntervenciones = oMyFunctions.mySqlDataR()





            DatasetSsesiones = oMyFunctions.mySqlDataR()

            DatasetSsesiones.Tables(0).TableName = "xmlSesiones"
            DatasetSsesiones.Tables(1).TableName = "xmlProyectos"
            DatasetSsesiones.Tables(2).TableName = "xmlIntervenciones"
            DatasetSsesiones.Tables(3).TableName = "xmlTipoActos"
            DatasetSsesiones.Tables(4).TableName = "xmlDebates"
            DatasetSsesiones.Tables(5).TableName = "xmlStatus"
            DatasetSsesiones.Tables(6).TableName = "xmlProponentes"

            DatasetSsesiones.Tables(7).TableName = "xmlPartidos"
            DatasetSsesiones.Tables(8).TableName = "xmlComisiones"
            DatasetSsesiones.Tables(9).TableName = "xmlComisionesDistinct"
            DatasetSsesiones.Tables(10).TableName = "xmlProponentesProComision"
            DatasetSsesiones.Tables(11).TableName = "xmlIntervencionesPorUsuario"
            DatasetSsesiones.Tables(12).TableName = "xmlSesionesFiltro"

        End If

        Return DatasetSsesiones

    End Function

    <WebMethod()> _
    Public Function retornarSesionesFiltro()

        Dim oMyFunctions As New MyFunctions
        Dim resultSesiones As String = ""

        Dim writerSesiones As StringWriter = New System.IO.StringWriter()
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT id_sesiones,DATE_FORMAT(sesion_fecha_creacion,'%Y-%m-%d') as descripcion_larga,IFNULL(descripcion_corta,"""") as descripcion_corta , DATE_FORMAT(sesion_fecha_creacion,'%Y-%m-%d') as descripcion_larga_p FROM sesiones ORDER BY  sesion_fecha_creacion DESC"
        Dim DatasetSsesiones = oMyFunctions.mySqlDataR()
        DatasetSsesiones.Tables(0).TableName = "xmlSesionesFiltro"
        DatasetSsesiones.Tables(0).WriteXml(writerSesiones, XmlWriteMode.WriteSchema, False)
        resultSesiones = writerSesiones.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "")

        Return resultSesiones


    End Function


    <WebMethod()> _
    Public Function retornarProyectos()

        Dim resultProyectos As String = ""
        Dim writerProyectos As StringWriter = New System.IO.StringWriter()
        Dim DatasetProyectos As DataTable = retornarProyectosObject()
        DatasetProyectos.WriteXml(writerProyectos, XmlWriteMode.WriteSchema, False)
        resultProyectos = writerProyectos.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "").Replace(";", "")
        Return resultProyectos

    End Function

    <WebMethod()> _
    Public Function retornarProyectosObject() As DataTable

        Dim oMyFunctions As New MyFunctions
        oMyFunctions.sqlString = ""

        oMyFunctions.sqlString += " SELECT distinct p.id_proyecto,IFNULL(p.proyecto_nombre,""."") as proyecto_nombre,se.id_sesiones,IFNULL(se.sesion_nombre,""."") as sesion_nombre,sp.id_sesion_proyecto,IFNULL(l.legislacion_nombre,""."") as legislacion_nombre," + _
                                 " IFNULL(d.diputado_nombre,""."") as diputado_nombre,IFNULL(cd.comision_dictaminadora_nombre,""."") as comision_dictaminadora_nombre,IFNULL(s.status_nombre,""."")  as status_nombre,DATE_FORMAT(sesion_fecha_creacion,'%Y-%m-%d')  as fecha_creacion,IFNULL(td.tipo_debate_nombre,""."") as  tipo_debate_nombre,IFNULL(par.partido_nombre,""."") as partido_nombre,IFNULL(p.proyecto_descripcion,""."") as proyecto_descripcion  " +
                                "  FROM sesion_proyecto sp ,sesiones se ,proyectos p  ,tipo_debate td  ,legislacion l ,diputado d ,partido par   ,comision_dictaminadora cd   ,status s    " +
                                " WHERE sp.id_sesion=se.id_sesiones   AND sp.id_proyecto=p.id_proyecto AND sp.id_tipo_debate=td.id_tipo_debate AND p.id_legislacion=l.id_legislacion AND p.id_proponente=d.id_diputado AND d.id_partido=par.id_partido AND p.id_comision_dictaminadora=cd.id_comision_dictaminadora AND sp.id_status=s.id_status   " +
                                " ORDER BY  sp.fecha_creacion DESC ; "

        Dim DatasetProyectos = oMyFunctions.mySqlDataR()
        DatasetProyectos.Tables(0).TableName = "xmlProyectos"


        Return DatasetProyectos.Tables(0)

    End Function

    <WebMethod()> _
    Public Function retornarIntervenciones()

        Dim oMyFunctions As New MyFunctions
        Dim resultIntervenciones As String = ""
        'INTERVENCIONES
        Dim writerIntervenciones As StringWriter = New System.IO.StringWriter()
        oMyFunctions.sqlString = ""
        'oMyFunctions.sqlString += " SELECT di.id_detalle_intervencion,di.id_sesion_proyecto,IFNULL(di.id_diputado,""0"") as id_diputado ,IFNULL(d.id_partido,""0"") as id_partido,IFNULL(p.partido_nombre,""."") as partido_nombre,IFNULL(p.partido_imagen,""."") as partido_imagen,REPLACE(di.intervencion_texto, ';', '') as intervencion_texto,di.intervencion_fecha_creacion,IFNULL(d.diputado_nombre,""."") as diputado_nombre,IFNULL(d.diputado_imagen,""."") as diputado_imagen,sp.id_sesion,sp.id_proyecto,s.sesion_nombre,pr.proyecto_nombre "
        'oMyFunctions.sqlString += " FROM detalle_intervencion di LEFT JOIN diputado d on di.id_diputado=d.id_diputado LEFT JOIN partido p on d.id_partido=p.id_partido LEFT JOIN sesion_proyecto sp ON di.id_sesion_proyecto = sp.id_sesion_proyecto LEFT JOIN sesiones s ON sp.id_sesion = s.id_sesiones LEFT JOIN proyectos pr ON sp.id_proyecto = pr.id_proyecto  order by intervencion_fecha_creacion DESC "

        oMyFunctions.sqlString += " SELECT di.id_detalle_intervencion,di.id_sesion_proyecto,IFNULL(di.id_diputado,""0"") as id_diputado ,IFNULL(d.id_partido,""0"") as id_partido,IFNULL(p.partido_nombre,""."") as partido_nombre,IFNULL(p.partido_imagen,""."") as partido_imagen,REPLACE(di.intervencion_texto, ';', '') as intervencion_texto,DATE_FORMAT(sesion_fecha_creacion,'%Y-%m-%d') as intervencion_fecha_creacion,IFNULL(d.diputado_nombre,""."") as diputado_nombre,IFNULL(d.diputado_imagen,""."") as diputado_imagen,sp.id_sesion,sp.id_proyecto,s.sesion_nombre,pr.proyecto_nombre "
        oMyFunctions.sqlString += " FROM detalle_intervencion di, diputado d , partido p ,sesion_proyecto sp , sesiones s , proyectos pr  WHERE di.id_diputado=d.id_diputado AND d.id_partido=p.id_partido AND di.id_sesion_proyecto = sp.id_sesion_proyecto AND sp.id_sesion = s.id_sesiones AND sp.id_proyecto = pr.id_proyecto order by intervencion_fecha_creacion DESC "


        Dim DatasetSIntervenciones = oMyFunctions.mySqlDataR()
        DatasetSIntervenciones.Tables(0).TableName = "xmlIntervenciones"
        DatasetSIntervenciones.Tables(0).WriteXml(writerIntervenciones, XmlWriteMode.WriteSchema, False)
        resultIntervenciones = writerIntervenciones.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "").Replace(";", "")

        Return resultIntervenciones

    End Function

    <WebMethod()> _
    Public Function retornarDiputados()

        Dim oMyFunctions As New MyFunctions
        Dim resultProponentes As String = ""
        Dim writerProponentes As StringWriter = New System.IO.StringWriter()
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT d.id_diputado,d.diputado_nombre,p.partido_nombre,IFNULL(d.descripcion_corta,""."") as descripcion_corta , IFNULL(d.descripcion_larga,""."") as descripcion_larga,d.diputado_imagen,LOWER(d.diputado_nombre) as diputado_nombre_lower FROM diputado d LEFT JOIN partido p on d.id_partido=p.id_partido where d.diputado_activo=1"
        Dim DatasetSProponentes = oMyFunctions.mySqlDataR()
        DatasetSProponentes.Tables(0).TableName = "xmlProponentes"
        DatasetSProponentes.Tables(0).WriteXml(writerProponentes, XmlWriteMode.WriteSchema, False)
        resultProponentes = writerProponentes.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "").Replace(";", "")

        Return resultProponentes


    End Function

    <WebMethod()> _
    Public Function retornarComisiones()
        Dim oMyFunctions As New MyFunctions
        Dim resultComisiones As String = ""
        Dim writerComisiones As StringWriter = New System.IO.StringWriter()
        oMyFunctions.sqlString = "" ' " SELECT * FROM comision_dicatminadora_diputado WHERE 1"
        oMyFunctions.sqlString += " SELECT cdd.id_comision_dictaminadora,IFNULL(cd.comision_dictaminadora_nombre,""."") as comision_dictaminadora_nombre,IFNULL(d.diputado_nombre,""."")  as diputado_nombre,IFNULL(p.partido_nombre,""."") as partido_nombre " + _
                                    " FROM comision_dicatminadora_diputado  cdd LEFT JOIN  comision_dictaminadora cd  ON cd.id_comision_dictaminadora=cdd.id_comision_dictaminadora " + _
                                    " LEFT JOIN diputado d on cdd.id_diputado=d.id_diputado LEFT JOIN partido p on d.id_partido=p.id_partido WHERE IFNULL(d.diputado_nombre,""."") <>"".""  AND cd.activo=1"
        Dim DatasetSComisiones = oMyFunctions.mySqlDataR()
        DatasetSComisiones.Tables(0).TableName = "xmlComisiones"
        DatasetSComisiones.Tables(0).WriteXml(writerComisiones, XmlWriteMode.WriteSchema, False)
        resultComisiones = writerComisiones.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "").Replace(";", "")
        Return resultComisiones


    End Function

    <WebMethod()> _
    Public Function retornarComisionesDistinct()
        Dim oMyFunctions As New MyFunctions
        Dim writerComisionesDistinct As StringWriter = New System.IO.StringWriter()
        Dim resultComisionesDistinct As String = ""
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT cd.id_comision_dictaminadora,IFNULL(cd.comision_dictaminadora_nombre,""."") as comision_dictaminadora_nombre, " + _
                                    " IFNULL(descripcion_corta,""."") as descripcion_corta , IFNULL(descripcion_larga,""."") as descripcion_larga,'' as var,imagen,cd.activo,LOWER(cd.comision_dictaminadora_nombre) as comision_dictaminadora_nombre_lower FROM  comision_dictaminadora cd WHERE cd.activo=1"
        Dim DatasetSComisionesDistinct = oMyFunctions.mySqlDataR()
        DatasetSComisionesDistinct.Tables(0).TableName = "xmlComisionesDistinct"
        DatasetSComisionesDistinct.Tables(0).WriteXml(writerComisionesDistinct, XmlWriteMode.WriteSchema, False)
        resultComisionesDistinct = writerComisionesDistinct.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "").Replace(";", "")

        Return resultComisionesDistinct
    End Function

    <WebMethod()> _
    Public Function retornarIntervencionesPorUsuario(ByVal usuario_nombre As String)

        Dim oMyFunctions As New MyFunctions
        Dim resultIntervenciones As String = ""
        'INTERVENCIONES
        Dim writerIntervenciones As StringWriter = New System.IO.StringWriter()
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT di.id_detalle_intervencion,di.id_sesion_proyecto,IFNULL(di.id_diputado,""0"") as id_diputado ,IFNULL(d.id_partido,""0"") as id_partido,IFNULL(p.partido_nombre,""."") as partido_nombre,IFNULL(p.partido_imagen,""."") as partido_imagen,REPLACE(di.intervencion_texto, ';', '') as intervencion_texto,DATE_FORMAT(s.sesion_fecha_creacion,'%Y-%m-%d') as intervencion_fecha_creacion,IFNULL(d.diputado_nombre,""."") as diputado_nombre,IFNULL(d.diputado_imagen,""."") as diputado_imagen,sp.id_sesion,sp.id_proyecto,s.sesion_nombre,pr.proyecto_nombre "
        oMyFunctions.sqlString += " FROM detalle_intervencion di , diputado d , partido p , sesion_proyecto sp , sesiones s , proyectos pr WHERE di.id_detalle_intervencion IN (SELECT id_detalle_intervencion FROM intervencion_usuario iu LEFT JOIN usuario u ON iu.id_usuario=u.id_usuario WHERE   iu.tipo ='Intervencion' AND u.usuario_nombre = '" + usuario_nombre + "' )  "
        oMyFunctions.sqlString += " AND di.id_diputado=d.id_diputado AND d.id_partido=p.id_partido AND di.id_sesion_proyecto = sp.id_sesion_proyecto AND sp.id_sesion = s.id_sesiones AND sp.id_proyecto = pr.id_proyecto "

        oMyFunctions.sqlString += " UNION"

        oMyFunctions.sqlString += " SELECT pr.id_proyecto as id_detalle_intervencion, 0 as id_sesion_proyecto,IFNULL(pr.id_proponente,""0"") as id_diputado ,IFNULL(d.id_partido,""0"") as id_partido,"
        oMyFunctions.sqlString += " IFNULL(p.partido_nombre,""."") as partido_nombre,IFNULL(p.partido_imagen,""."") as partido_imagen,REPLACE(pr.proyecto_descripcion, ';', '') as intervencion_texto,"
        oMyFunctions.sqlString += " DATE_FORMAT(s.sesion_fecha_creacion,'%Y-%m-%d') as intervencion_fecha_creacion,IFNULL(d.diputado_nombre,""."") as diputado_nombre,"
        oMyFunctions.sqlString += " IFNULL(d.diputado_imagen,""."") as diputado_imagen,0 as id_sesion,pr.id_proyecto as id_poryecto_p,s.sesion_nombre,pr.proyecto_nombre "
        oMyFunctions.sqlString += " FROM proyectos pr , diputado d , partido p , sesiones s ,sesion_proyecto  sp "
        oMyFunctions.sqlString += " WHERE pr.id_proyecto IN (SELECT id_detalle_intervencion "
        oMyFunctions.sqlString += " FROM intervencion_usuario iu LEFT JOIN usuario u ON iu.id_usuario=u.id_usuario WHERE   iu.tipo ='proyecto' AND u.usuario_nombre = 'malcolm' )  "
        oMyFunctions.sqlString += " AND pr.id_proponente=d.id_diputado AND d.id_partido=p.id_partido  AND sp.id_proyecto = pr.id_proyecto AND sp.id_sesion=s.id_sesiones  "

        Dim DatasetSIntervenciones = oMyFunctions.mySqlDataR()
        DatasetSIntervenciones.Tables(0).TableName = "xmlIntervencionesPorUsuario"
        DatasetSIntervenciones.Tables(0).WriteXml(writerIntervenciones, XmlWriteMode.WriteSchema, False)
        resultIntervenciones = writerIntervenciones.ToString().Replace(vbNewLine, "").Replace("  ", "").Replace("   ", "").Replace("    ", "").Replace(";", "")

        Return resultIntervenciones

    End Function

    Public Function DataTableToHTMLTable(ByVal inTable As DataTable) As String
        Dim dString As New StringBuilder
        dString.Append("<table border=""1"" cellpadding=""1"" cellspacing=""1"">")
        dString.Append(GetHeader(inTable))
        dString.Append(GetBody(inTable))
        dString.Append("</table>")
        Return dString.ToString
    End Function

    Private Function GetHeader(ByVal dTable As DataTable) As String
        Dim dString As New StringBuilder

        dString.Append("<thead style=""background-color:#4169E1;border-collapse:collapse;border:1px solid #FFCC00;color:#CCFFFF;width:100%""><tr>")
        For Each dColumn As DataColumn In dTable.Columns
            dString.AppendFormat("<th>{0}</th>", dColumn.ColumnName)
        Next
        dString.Append("</tr></thead>")

        Return dString.ToString
    End Function

    Private Function GetBody(ByVal dTable As DataTable) As String
        Dim dString As New StringBuilder

        dString.Append("<tbody>")

        For Each dRow As DataRow In dTable.Rows
            dString.Append("<tr >")
            For dCount As Integer = 0 To dTable.Columns.Count - 1
                dString.AppendFormat("<td valign=""top"" align=""justify"">{0}</td>", dRow(dCount))
            Next
            dString.Append("</tr>")
        Next
        dString.Append("</tbody>")

        Return dString.ToString()

    End Function


End Class