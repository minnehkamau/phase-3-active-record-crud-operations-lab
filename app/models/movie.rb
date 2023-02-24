class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        create(title: title)
      end
    def self.first_movie
        order(:id).first
      end
    
      def self.last_movie
        order(:id).last
      end
    
      def self.movie_count
        count
      end
    
      def self.find_movie_with_id(id)
        find(id)
      end
      def self.find_movie_with_attributes(attributes)
        where(attributes).first
      end
    
      def self.find_movies_after_2002
        where('release_date > ?', 2002)
      end
    
      def self.update_all_titles(new_title)
        update_all(title: new_title)
      end 
    def update_with_attributes(attributes)
      update(attributes)
    end
    def self.delete_by_id(id)
        find(id).destroy
      end
    
    def self.delete_all_movies
        delete_all
    end

    
end