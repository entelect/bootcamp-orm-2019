package za.co.entelect.bootcamp.orm.core.usecases.issue.readone;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCaseResponse;

@Getter
@Setter
public class ReadOneIssueResponse implements UseCaseResponse {
    private Issue issue;
}
