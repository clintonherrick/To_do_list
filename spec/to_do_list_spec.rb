require('rspec')
require('to_do_list')

describe(ToDo) do
  describe("#description") do
    it("lets you give it a description") do
      test_task = ToDo.new("scrub the zebra")
      expect(test_task.description()).to(eq("scrub the zebra"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(ToDo.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = ToDo.new("wash the lion")
      test_task.save()
      expect(ToDo.all()).to(eq([test_task]))
    end
  end
end
