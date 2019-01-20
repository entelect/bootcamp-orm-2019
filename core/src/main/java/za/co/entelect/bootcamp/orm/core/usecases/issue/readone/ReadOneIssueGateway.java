package za.co.entelect.bootcamp.orm.core.usecases.issue.readone;

import za.co.entelect.bootcamp.orm.core.entities.Issue;

public interface ReadOneIssueGateway {
    Issue findById(Long id);
}
