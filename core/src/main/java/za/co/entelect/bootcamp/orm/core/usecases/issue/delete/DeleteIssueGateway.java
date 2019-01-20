package za.co.entelect.bootcamp.orm.core.usecases.issue.delete;

import za.co.entelect.bootcamp.orm.core.entities.Issue;

public interface DeleteIssueGateway {
    void delete(Issue issue);
}
