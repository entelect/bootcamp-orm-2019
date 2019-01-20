package za.co.entelect.bootcamp.orm.core.usecases.issue.save;

import za.co.entelect.bootcamp.orm.core.entities.Issue;

public interface SaveIssueGateway {
    Issue save(Issue issue);
}
