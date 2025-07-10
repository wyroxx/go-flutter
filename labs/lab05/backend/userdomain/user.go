package userdomain

import (
	"errors"
	_ "regexp"
	"strings"
	"time"
)

// User represents a user entity in the domain
type User struct {
	ID        int       `json:"id"`
	Email     string    `json:"email"`
	Name      string    `json:"name"`
	Password  string    `json:"-"` // Never serialize password
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
}

// TODO: Implement NewUser function
// NewUser creates a new user with validation
// Requirements:
// - Email must be valid format
// - Name must be 2-50 characters
// - Password must be at least 8 characters
// - CreatedAt and UpdatedAt should be set to current time
func NewUser(email, name, password string) (*User, error) {
	// TODO: Implement this function
	// Hint: Use ValidateEmail, ValidateName, ValidatePassword helper functions
	return nil, errors.New("not implemented")
}

// TODO: Implement Validate method
// Validate checks if the user data is valid
func (u *User) Validate() error {
	// TODO: Implement validation logic
	// Check email, name, and password validity
	return errors.New("not implemented")
}

// TODO: Implement ValidateEmail function
// ValidateEmail checks if email format is valid
func ValidateEmail(email string) error {
	// TODO: Implement email validation
	// Use regex pattern to validate email format
	// Email should not be empty and should match standard email pattern
	return errors.New("not implemented")
}

// TODO: Implement ValidateName function
// ValidateName checks if name is valid
func ValidateName(name string) error {
	// TODO: Implement name validation
	// Name should be 2-50 characters, trimmed of whitespace
	// Should not be empty after trimming
	return errors.New("not implemented")
}

// TODO: Implement ValidatePassword function
// ValidatePassword checks if password meets security requirements
func ValidatePassword(password string) error {
	// TODO: Implement password validation
	// Password should be at least 8 characters
	// Should contain at least one uppercase, lowercase, and number
	return errors.New("not implemented")
}

// UpdateName updates the user's name with validation
func (u *User) UpdateName(name string) error {
	if err := ValidateName(name); err != nil {
		return err
	}
	u.Name = strings.TrimSpace(name)
	u.UpdatedAt = time.Now()
	return nil
}

// UpdateEmail updates the user's email with validation
func (u *User) UpdateEmail(email string) error {
	if err := ValidateEmail(email); err != nil {
		return err
	}
	u.Email = strings.ToLower(strings.TrimSpace(email))
	u.UpdatedAt = time.Now()
	return nil
}
