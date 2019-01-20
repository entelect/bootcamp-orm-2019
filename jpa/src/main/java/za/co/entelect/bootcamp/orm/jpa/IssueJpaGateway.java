package za.co.entelect.bootcamp.orm.jpa;

import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.gateway.exception.NotFoundException;
import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.core.usecases.issue.readpage.ReadIssuePageGateway;
import za.co.entelect.bootcamp.orm.core.usecases.issue.save.SaveIssueGateway;
import za.co.entelect.bootcamp.orm.jpa.mappers.IssueMapper;
import za.co.entelect.bootcamp.orm.jpa.models.IssueDataModel;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class IssueJpaGateway implements ReadOneIssueGateway, ReadIssuePageGateway, SaveIssueGateway {
    private EntityManager entityManager;

    public IssueJpaGateway() {
        entityManager = Persistence.
                createEntityManagerFactory("comicPersistenceUnit").
                createEntityManager();
    }

    @Override
    public Issue findById(Long id) {
        IssueDataModel issueDataModel = entityManager.find(IssueDataModel.class, id.intValue());
        if (issueDataModel == null) {
            entityManager.getTransaction().rollback();
            throw new NotFoundException(Issue.class, id);
        }

        return IssueMapper.INSTANCE.toIssue(issueDataModel);
    }

    @Override
    public Page<Issue> findPage(int page, int pageSize) {
        // Get the page data
        Query query = entityManager.createQuery("select issue from IssueDataModel issue");
        query.setFirstResult(page * pageSize);
        query.setMaxResults(pageSize);
        List<IssueDataModel> issueDataModels = query.getResultList();

        // Count the total records
        Query countQuery = entityManager.createQuery("select count (issue.id) from IssueDataModel issue");
        Long countResult = (Long) countQuery.getSingleResult();

        return new Page<Issue>(
                IssueMapper.INSTANCE.toIssues(issueDataModels),
                page,
                pageSize,
                countResult
        );
    }

    @Override
    public Issue save(Issue issue) {
        entityManager.getTransaction().begin();

        IssueDataModel issueDataModel;
        if (issue.getId() == null) {
            issueDataModel = IssueMapper.INSTANCE.toIssueDataModel(issue);
        } else {
            issueDataModel = entityManager.find(IssueDataModel.class, issue.getId().intValue());
            IssueMapper.INSTANCE.updateDataModel(issueDataModel, issue);
        }
        entityManager.persist(issueDataModel);
        entityManager.getTransaction().commit();

        return IssueMapper.INSTANCE.toIssue(issueDataModel);
    }
}
