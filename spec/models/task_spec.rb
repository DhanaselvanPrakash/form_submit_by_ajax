require 'rails_helper'

RSpec.describe "Task", type: :model do
  subject { todo = Todo.new(title: "Ruby", status: "Pending", deadline: "10-01-2025") }

  it "all fields are valid" do
    expect(subject).to be_valid
  end

  it "any one of the valid is invlaid" do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end
