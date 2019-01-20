package za.co.entelect.bootcamp.orm.core.usecases.issue.readpage;

import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.usecases.common.Presenter;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCase;

public class ReadIssuePage<Model> extends UseCase<Model, ReadIssuePageRequest, ReadIssuePageResponse> {
    private final ReadIssuePageGateway gateway;

    public ReadIssuePage(
            Presenter<Model, ReadIssuePageResponse> presenter,
            ReadIssuePageGateway gateway
    ) {
        super(presenter);

        this.gateway = gateway;
    }

    @Override
    public Model execute(ReadIssuePageRequest request) {
        Page<Issue> page = gateway.findPage(request.getPage(), request.getPageSize());
        return presenter.present(buildResponse(page));
    }

    private ReadIssuePageResponse buildResponse(Page<Issue> page) {
        ReadIssuePageResponse response = new ReadIssuePageResponse();
        response.setPage(page);
        return response;
    }
}
