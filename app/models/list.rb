class List < ApplicationRecord

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true

  def index
    @lists = List.all
  end

  def new
  end

  def show
  end

  def create
  end

end
