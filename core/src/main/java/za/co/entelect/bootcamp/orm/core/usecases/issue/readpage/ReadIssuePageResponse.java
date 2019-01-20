package za.co.entelect.bootcamp.orm.core.usecases.issue.readpage;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCaseResponse;

@Getter
@Setter
public class ReadIssuePageResponse implements UseCaseResponse {
    private Page<Issue> page;
}
