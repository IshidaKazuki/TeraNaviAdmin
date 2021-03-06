package ttc.util.factory;

import java.util.Properties;
import java.io.IOException;

import ttc.dao.AbstractDao;
import ttc.dao.ArticleDao;

import ttc.exception.IntegrationException;

public class ArticleDaoFactory extends AbstractDaoFactory{
    public AbstractDao getAbstractDao(){
        return new ArticleDao();
    }
}
