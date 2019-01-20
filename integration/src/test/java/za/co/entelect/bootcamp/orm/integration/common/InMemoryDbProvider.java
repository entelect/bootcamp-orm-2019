package za.co.entelect.bootcamp.orm.integration.common;

import org.h2.tools.RunScript;

import java.io.StringReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class InMemoryDbProvider {

    private Connection connection;

    public InMemoryDbProvider(String sqlScriptFilename) throws SQLException {
        this(sqlScriptFilename, "");
    }

    public InMemoryDbProvider(String sqlScriptFilename, String extraOptions) throws SQLException {
        connection = DriverManager.getConnection(
                "jdbc:h2:mem:bootcamp;INIT=RUNSCRIPT FROM 'classpath:" + sqlScriptFilename + "';" + extraOptions
        );
    }

    public Connection getConnection() {
        return connection;
    }

    public void cleanUpDatabase() {
        try {
            RunScript.execute(connection, new StringReader("SHUTDOWN"));
            connection.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
