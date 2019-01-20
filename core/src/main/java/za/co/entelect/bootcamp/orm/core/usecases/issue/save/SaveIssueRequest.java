package za.co.entelect.bootcamp.orm.core.usecases.issue.save;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCaseRequest;

@Getter
@Setter
public class SaveIssueRequest implements UseCaseRequest {
    private Issue issue;
}
