package main

import (
	// "fmt"
	"time"
)

type TestStructValue struct {
	name  string
	time  int64
	today time.Time
	arr   []int
	alpha []string
}
type TestStruct struct {
	name  string
	value TestStructValue
}

func main() {
	cache := make([]TestStruct, 1000000)
	for index := 0; index < 1000000; index++ {
		cache[index] = TestStruct{
			name: "This is a JSON Object",
			value: TestStructValue{
				name:  "This is a sub-JSON Object",
				time:  time.Time.Unix(time.Now()),
				today: time.Now(),
				arr:   []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 0},
				alpha: []string{"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"},
			},
		}
	}

	// This does work
	time.Sleep(30 * time.Second)
	cache = nil
}
