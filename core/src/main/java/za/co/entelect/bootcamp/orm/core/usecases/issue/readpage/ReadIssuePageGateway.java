package za.co.entelect.bootcamp.orm.core.usecases.issue.readpage;

import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Issue;

public interface ReadIssuePageGateway {
    Page<Issue> findPage(int page, int pageSize);
}
