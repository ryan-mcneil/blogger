require "rails_helper"

describe "user edits an article" do
  describe "they link from the article show page" do
    describe "they fill in a title and body" do
      it "updates the article" do
        article_1 = Article.create!(title: "Title 1", body: "Body 1")

        visit article_path(article_1)
        click_link "Edit Article"

        expect(current_path).to eq(edit_article_path(article_1))

        fill_in "article[title]", with: "Updated Title!"
        fill_in "article[body]",  with: "Updated Body!"
        click_on "Update Article"


        expect(page).to have_content("Updated Title!")
        expect(page).to have_content("Updated Body!")
        expect(page).to have_content("Article 'Updated Title!' Updated!")
      end
    end
  end
end
