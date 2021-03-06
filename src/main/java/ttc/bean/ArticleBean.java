package ttc.bean;

import java.util.List;

public class ArticleBean implements Bean{
    private String articleId;
    private String title;
    private String articleBody;
    private String createdDate;
    private List tags;
    private List comments;


    /**
    * Returns value of articleId
    * @return
    */
    public String getArticleId() {
    	return articleId;
    }

    /**
    * Sets new value of articleId
    * @param
    */
    public void setArticleId(String articleId) {
    	this.articleId = articleId;
    }

    /**
    * Returns value of title
    * @return
    */
    public String getTitle() {
    	return title;
    }

    /**
    * Sets new value of title
    * @param
    */
    public void setTitle(String title) {
    	this.title = title;
    }

    /**
    * Returns value of articleBody
    * @return
    */
    public String getArticleBody() {
    	return articleBody;
    }

    /**
    * Sets new value of articleBody
    * @param
    */
    public void setArticleBody(String articleBody) {
    	this.articleBody = articleBody;
    }

    /**
    * Returns value of createdDate
    * @return
    */
    public String getCreatedDate() {
    	return createdDate;
    }

    /**
    * Sets new value of createdDate
    * @param
    */
    public void setCreatedDate(String createdDate) {
    	this.createdDate = createdDate;
    }

    /**
    * Returns value of tags
    * @return
    */
    public List getTags() {
    	return tags;
    }

    /**
    * Sets new value of tags
    * @param
    */
    public void setTags(List tags) {
    	this.tags = tags;
    }

    /**
    * Returns value of comments
    * @return
    */
    public List getComments() {
    	return comments;
    }

    /**
    * Sets new value of comments
    * @param
    */
    public void setComments(List comments) {
    	this.comments = comments;
    }
}
