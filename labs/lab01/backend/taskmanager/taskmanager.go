package taskmanager

import (
	"errors"
	"time"
)

var (
	// ErrTaskNotFound is returned when a task is not found
	ErrTaskNotFound = errors.New("task not found")
	// ErrEmptyTitle is returned when the task title is empty
	ErrEmptyTitle = errors.New("task title cannot be empty")
	// ErrInvalidID is returned when the task ID is invalid
	ErrInvalidID = errors.New("invalid task ID")
)

// Task represents a single task
type Task struct {
	ID          int
	Title       string
	Description string
	Done        bool
	CreatedAt   time.Time
}

// TaskManager manages a collection of tasks
type TaskManager struct {
	tasks  map[int]*Task
	nextID int
}

// NewTaskManager creates a new task manager
func NewTaskManager() *TaskManager {
	// TODO: Implement task manager initialization
	return nil
}

// AddTask adds a new task to the manager
func (tm *TaskManager) AddTask(title, description string) (*Task, error) {
	// TODO: Implement task addition
	return nil, nil
}

// UpdateTask updates an existing task
func (tm *TaskManager) UpdateTask(id int, title, description string, done bool) error {
	// TODO: Implement task update
	return nil
}

// DeleteTask removes a task from the manager
func (tm *TaskManager) DeleteTask(id int) error {
	// TODO: Implement task deletion
	return nil
}

// GetTask retrieves a task by ID
func (tm *TaskManager) GetTask(id int) (*Task, error) {
	// TODO: Implement task retrieval
	return nil, nil
}

// ListTasks returns all tasks, optionally filtered by done status
func (tm *TaskManager) ListTasks(filterDone *bool) []*Task {
	// TODO: Implement task listing with optional filter
	return nil
}
