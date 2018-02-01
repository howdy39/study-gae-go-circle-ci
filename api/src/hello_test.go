package src

import "testing"

func TestGetMessage(t *testing.T) {
	result := getMessage()

	if result != "Hello, world!!3" {
		t.Fatal("failed test")
	}
}
