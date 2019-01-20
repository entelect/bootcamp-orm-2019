package za.co.entelect.bootcamp.orm.core.usecases.common;

public interface Presenter<Model, Response extends UseCaseResponse> {
    Model present(Response response);
}
