class DataService {
    static var todos: [Todo] = [
        Todo(title: "hello")
    ]
    
    static func addTodo (todo: Todo) {
        todos.append(todo)
    }
    
    static func getTodos () -> [Todo] {
        return todos
    }
}
