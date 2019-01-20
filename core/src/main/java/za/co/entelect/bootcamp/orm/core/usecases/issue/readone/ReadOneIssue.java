package za.co.entelect.bootcamp.orm.core.usecases.issue.readone;

import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.usecases.common.Presenter;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCase;

public class ReadOneIssue<Model> extends UseCase<Model, ReadOneIssueRequest, ReadOneIssueResponse> {
    private final ReadOneIssueGateway gateway;

    public ReadOneIssue(
            Presenter<Model, ReadOneIssueResponse> presenter,
            ReadOneIssueGateway gateway
    ) {
        super(presenter);

        this.gateway = gateway;
    }

    @Override
    public Model execute(ReadOneIssueRequest request) {
        Issue issue = gateway.findById(request.getIssueId());
        return presenter.present(buildResponse(issue));
    }

    private ReadOneIssueResponse buildResponse(Issue issue) {
        ReadOneIssueResponse response = new ReadOneIssueResponse();
        response.setIssue(issue);
        return response;
    }
}
