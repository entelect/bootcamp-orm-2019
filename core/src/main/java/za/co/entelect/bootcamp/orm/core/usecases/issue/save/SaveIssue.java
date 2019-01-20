package za.co.entelect.bootcamp.orm.core.usecases.issue.save;

import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.usecases.common.Presenter;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCase;

public class SaveIssue<Model> extends UseCase<Model, SaveIssueRequest, SaveIssueResponse> {
    private final SaveIssueGateway gateway;

    public SaveIssue(
            Presenter<Model, SaveIssueResponse> presenter,
            SaveIssueGateway gateway
    ) {
        super(presenter);

        this.gateway = gateway;
    }

    @Override
    public Model execute(SaveIssueRequest request) {
        Issue issue = gateway.save(request.getIssue());
        return presenter.present(buildResponse(issue));
    }

    private SaveIssueResponse buildResponse(Issue issue) {
        SaveIssueResponse response = new SaveIssueResponse();
        response.setIssue(issue);
        return response;
    }
}
