package za.co.entelect.bootcamp.orm.jpa.exercise;

import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Stock;
import za.co.entelect.bootcamp.orm.core.usecases.stock.readone.ReadOneStockGateway;
import za.co.entelect.bootcamp.orm.core.usecases.stock.readpage.ReadStockPageGateway;
import za.co.entelect.bootcamp.orm.core.usecases.stock.save.SaveStockGateway;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

public class StockJpaGateway implements ReadOneStockGateway, ReadStockPageGateway, SaveStockGateway {
    private EntityManager entityManager;

    public StockJpaGateway() {
        entityManager = Persistence.
                createEntityManagerFactory("comicPersistenceUnit").
                createEntityManager();
    }

    @Override
    public Stock findById(Long id) {
        // TODO: Exercise 3 (JPA) - Implement StockJpaGateway.findById
        throw new UnsupportedOperationException();
    }

    @Override
    public Page<Stock> findPage(int page, int pageSize) {
        // TODO: Exercise 3 (JPA) - Implement StockJpaGateway.findPage
        throw new UnsupportedOperationException();
    }

    @Override
    public Stock save(Stock issue) {
        // TODO: Exercise 3 (JPA) - Implement StockJpaGateway.save
        throw new UnsupportedOperationException();
    }
}
