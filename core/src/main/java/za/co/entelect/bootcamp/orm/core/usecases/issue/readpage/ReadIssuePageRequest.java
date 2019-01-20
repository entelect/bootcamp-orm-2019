package za.co.entelect.bootcamp.orm.core.usecases.issue.readpage;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCaseRequest;

@Getter
@Setter
public class ReadIssuePageRequest implements UseCaseRequest {
    private int page;
    private int pageSize;
}
