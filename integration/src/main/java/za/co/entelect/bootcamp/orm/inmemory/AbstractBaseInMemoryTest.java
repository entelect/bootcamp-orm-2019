package za.co.entelect.bootcamp.orm.inmemory;

public abstract class AbstractBaseInMemoryTest {
    protected abstract String getSqlInitScriptFilename();

//    @Before
//    public void setUp() throws SQLException {
//        try (Connection connection = DriverManager.getConnection(getConnectionString())) {
//        }
//    }

    public String getConnectionString() {
        return "jdbc:h2:mem:bootcamp;INIT=RUNSCRIPT FROM 'classpath:" + getSqlInitScriptFilename() + "'";
    }
}
