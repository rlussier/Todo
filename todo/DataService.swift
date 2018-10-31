class DataService {
    static var todo: [Todo] = [
        Todo(title: "hello")
    ]
    
    static func addTodo (todo: Todo) {
        todos.append(todo)
    }
    
    static func getTodos () -> [Todo] {
        return todos
    }
}
