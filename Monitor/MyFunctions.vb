Imports MySql.Data.MySqlClient
Imports MySql.Data.MySqlClient.MySqlConnection
Imports System.Net.Mail
Imports System.Data.Odbc

Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.Data
Imports System.Xml
Imports System.Data.SqlClient
Imports System.Net
Imports System.IO


Public Class MyFunctions
    Public dsCancha As New DataSet

    'Private CadenaCon As String = "server=localhost;user id=root;password=root; database =congresomonitor"
    'Private CadenaCon As String = "Server= MonitorC.db.10147446.hostedresource.com ;Port=3306;Database=MonitorC;Uid=MonitorC;Pwd=Cortesmoncad@1;"
    'Private CadenaCon As String = "Server= 50.62.209.122 ;Port=3306;Database=info_lawfinance_mirador;Uid=mirador;Pwd=miradorlegislativo*1;"
    'Private CadenaCon As String = "Server= mysql5017.smarterasp.net ;Port=3306;Database=db_a11104_monitor;Uid=a11104_monitor;Pwd=Cortesmoncada31;"
    '50.62.160.247
    Private CadenaCon As String = "Server=mysql6001.site4now.net;Port=3306;Database=db_a4941a_johncor;Uid=a4941a_johncor;Pwd=Mirador8;"




    Public sqlString As String = ""
    Public strBusqueda As String = ""

    Public Function logueo(pUsuario As String, pContrasena As String) As Boolean

        Dim dsUsuario As New DataSet
        Dim dtUsuario As New DataTable
        Dim drUsuario As DataRow()

        logueo = False

        'para evitar sql inyections
        pUsuario = Replace(pUsuario, "'", "")
        pContrasena = Replace(pContrasena, "'", "")

        sqlString = "Select idusuario from usuarios where idusuario = '" & pUsuario & "' and contrasena = '" & pContrasena & "' and fec_baja is null"
        dsUsuario = mySqlDataR()
        dtUsuario = dsUsuario.Tables(0)
        drUsuario = dtUsuario.Select()

        For Each dr As DataRow In drUsuario
            logueo = True
        Next
    End Function

    Public Function odbccon()
        Dim MyConnection As New OdbcConnection("")
        Dim oCommand As New OdbcCommand
        Dim dataset As New DataSet

        Dim palabra As String = ""


        Dim MyConString As String = "DRIVER={MySQL ODBC 3.51 Driver};" + _
                             "SERVER=localhost;" + _
                             "DATABASE=bitnami_redmine;" + _
                             "UID=bitnami;" + _
                             "PASSWORD=2492a718b2;" + _
                             "OPTION=3"

        MyConnection.Open()
        oCommand.CommandText = "select * from user"

        Dim oAdapter As New OdbcDataAdapter(oCommand)
        oAdapter.Fill(dataset)

        Return True


    End Function


    Public Function mySqlDataR() As DataSet

        Dim oConexion As New MySqlConnection()
        Dim adapter As New MySqlDataAdapter()
        Dim oComando As New MySqlCommand(sqlString, oConexion)
        'Dim oDataReader As MySqlDataReader
        Dim dataset As New DataSet


        oConexion.ConnectionString = CadenaCon
        oConexion.Open()
        'oDataReader = oComando.ExecuteReader() ' obtener DataReader
        adapter.SelectCommand = New MySqlCommand(sqlString, oConexion)
        adapter.Fill(dataset)
        oConexion.Dispose()
        oConexion.Close()

        Return dataset
        'Return oDataReader

        '==========================================================================
        ' Conexion de 64 bits
        '==========================================================================

        'Dim MyConString As String = "DRIVER={MySQL ODBC 3.51 Driver};" + _
        '                     "SERVER=localhost;" + _
        '                     "DATABASE=bitnami_redmine;" + _
        '                     "UID=bitnami;" + _
        '                     "PASSWORD=2492a718b2;" + _
        '                     "OPTION=3"

        'Dim MyConnection As New OdbcConnection("Dsn=bitnami_redmine")
        'Dim oCommand As New OdbcCommand
        'Dim dataset As New DataSet

        'MyConnection.Open()
        'oCommand.CommandText = sqlString
        'oCommand.Connection = MyConnection

        'Dim oAdapter As New OdbcDataAdapter(oCommand)
        'oAdapter.Fill(dataset)

        'Return dataset


    End Function

    Public Function ArmarMensaje(Tipo As String, Mensaje As String)

        Dim MensajeRtorno As String = ""

        MensajeRtorno = "<div class=""" & Tipo & """>"
        MensajeRtorno += Mensaje
        MensajeRtorno += "</div>"


        Return MensajeRtorno
    End Function

    Public Function sendNotification(titulo As String, mensaje As String, DeviceID As String, ByVal DetalleIntervencion As String, ByVal apiKey As String)


        Dim hc As WebRequest
        Dim collapseKey As String
        Dim postData As String

        'DeviceID = "APA91bFIQFtnqQlKZZCLBM8-GuXiWd1q7pv0DtlvThT-Wa3xv7gAzgS7wBYuWL4CZEaAfwT7KQHv_k5ie9ZSeVDiJj3LI9VAt9ZVW5pae5GD2gaO9KLAGMdgPTunZ3dsxrndMfoxhGWd"

        DeviceID = "APA91bE4gp-ut6uUMkqBOWaZDSAInEeQ_CWdDzRyVd5dtgKNV7EhVBuwjtFBRRBkJOcHkoivexvNMWKnTXRr5UQ9cvjHgNVlZX_zI5Sq0RauzjfhUbWtE_ZFx4PxW8R3-DuzilVywC4c"
        apiKey = "AIzaSyDgT-uvNHjqrrrNqrHnmkqR19cLsH-2glw"

        '************************************************************************************************************

        Dim sCommand As String = titulo + ";" + mensaje + ";" + DetalleIntervencion
        Dim byteArray As Array
        Dim dataStream As IO.Stream

        hc = WebRequest.Create("https://android.googleapis.com/gcm/send")
        hc.Method = "post"
        hc.ContentType = "application/x-www-form-urlencoded"

        '********************************************** API DEL PROYECTO DE GOOGLE **************************************************************
        'Aplicacion de Prueba lordkortex@gmail.com | CongresoMonitor | Google Api Console | Device: John Cortes | Celular: LG
        'hc.Headers.Add(String.Format("Authorization:Key={0}", "AIzaSyDgT-uvNHjqrrrNqrHnmkqR19cLsH-2glw"))
        hc.Headers.Add(String.Format("Authorization:Key={0}", apiKey))



        'Aplicacion de Prueba SftFactory@gmail.com | RadioHouse.hn | Google Api Console | Device: John Cortes | 
        'Dim DeviceID As String = "APA91bEEyb5A9DKvVuwRiYkLDwPastMhYXfn5ymEkB88947Ei-xX4KfwiV3IR70HrdprSEkQXRO15d1i_OJjbtRcClCYwh3qVLVpVmaAZSdob8UHJVgC5wUUOdlHnoyow9JGWDkIMexJW0PlrL3gkFdDcJRHcqnfudnN7wW67bsost7dxhVdDf9FIM9hm_0T-2eQ7RIC48Sq"




        '************************************************************************************************************
        collapseKey = Guid.NewGuid().ToString("n")
        postData = String.Format("registration_id={0}&data.payload={1}&collapse_key={2}", DeviceID, sCommand, collapseKey) '&data.payload=&collpase_key=", DeviceID, sCommand, collapseKey)
        byteArray = Encoding.UTF8.GetBytes(postData)
        hc.ContentLength = byteArray.Length


        dataStream = hc.GetRequestStream
        dataStream.Write(byteArray, 0, byteArray.Length)
        ' dataStream.Close()

        Dim tResponse As WebResponse

        tResponse = hc.GetResponse
        dataStream = tResponse.GetResponseStream
        Dim treader As StreamReader
        treader = New StreamReader(dataStream)
        Dim response As String


        response = treader.ReadToEnd
        Dim j As String = response '& vbCrLf & postData + postData1 + postData2
        treader.Close()
        dataStream.Close()

        Dim cad As String = DirectCast(tResponse, System.Net.HttpWebResponse).StatusCode
        Dim cad1 As String = DirectCast(tResponse, System.Net.HttpWebResponse).StatusDescription


        tResponse.Close()

        Return cad + "  /  " + cad1

    End Function
End Class
