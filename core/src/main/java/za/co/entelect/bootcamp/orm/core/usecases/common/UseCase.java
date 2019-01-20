package za.co.entelect.bootcamp.orm.core.usecases.common;

public abstract class UseCase<Model, Request extends UseCaseRequest, Response extends UseCaseResponse> {

    protected Presenter<Model, Response> presenter;

    public UseCase(Presenter<Model, Response> presenter) {
        this.presenter = presenter;
    }

    public abstract Model execute(Request request);
}
