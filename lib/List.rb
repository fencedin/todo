require './lib/task'

class List
  @@all_lists = []

  def List.all
    @@all_lists
  end

  def List.create(list_name)
    new_list = List.new(list_name)
    @@all_lists << new_list
    new_list
  end

  def initialize(list_name)
    @list_name = list_name
    @tasks = []
  end

  def tasks
    @tasks
  end

  def add_task(new_task)
    @tasks << new_task
  end

  def list_name
    @list_name
  end

  def task_done(i)
    @tasks.delete_at(i)
  end
end
