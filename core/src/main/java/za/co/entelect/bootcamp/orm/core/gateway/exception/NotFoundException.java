package za.co.entelect.bootcamp.orm.core.gateway.exception;

public class NotFoundException extends GatewayException {
    private static final String DEFAULT_MESSAGE = "Record not found.";
    private static final String NICE_MESSAGE = "%s with ID %s not found.";

    public NotFoundException(Class<?> type, Object id) {
        super(String.format(
                NICE_MESSAGE,
                type.getSimpleName(),
                id == null ? "NULL" : "'" + id.toString() + "'"
        ));
    }

    public NotFoundException(Throwable cause) {
        super(DEFAULT_MESSAGE, cause);
    }

    public NotFoundException(Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(DEFAULT_MESSAGE, cause, enableSuppression, writableStackTrace);
    }
}
