class AddRowsInSubjects < ActiveRecord::Migration
  def change
  	Subject.create :title => "Physics"
    Subject.create :title => "Mathematics"
    Subject.create :title => "Chemistry"
    Subject.create :title => "Geography"
  end
end
