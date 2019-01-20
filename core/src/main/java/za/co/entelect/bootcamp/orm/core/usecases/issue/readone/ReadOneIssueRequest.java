package za.co.entelect.bootcamp.orm.core.usecases.issue.readone;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCaseRequest;

@Getter
@Setter
public class ReadOneIssueRequest implements UseCaseRequest {
    private Long issueId;
}
