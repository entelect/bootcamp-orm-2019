package za.co.entelect.bootcamp.orm.core.gateway.exception;

public class MultipleRecordsException extends GatewayException {
    private static final String DEFAULT_MESSAGE = "Expected 1 matching record, but found multiple...";

    public MultipleRecordsException() {
        super(DEFAULT_MESSAGE);
    }

    public MultipleRecordsException(Throwable cause) {
        super(DEFAULT_MESSAGE, cause);
    }

    public MultipleRecordsException(Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(DEFAULT_MESSAGE, cause, enableSuppression, writableStackTrace);
    }
}
