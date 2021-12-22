package main

import (
	"fmt"
	"testing"
)

func testPrint(t *testing.T) {
	//t.SkipNow()
	res := Point1to20()
	fmt.Println("begin to test")
	if res != (10+0)*11/2 {
		t.Errorf("wrong result")
	}
}

func testPrint2(t *testing.T) {
	res := Point1to20()
	res++
	if res != (10+0)*11/2+1 {
		t.Errorf("wrong result")
	}
}

func TestAll(t *testing.T) {
	t.Run("test1", testPrint)
	t.Run("test2", testPrint2)
}

func TestMain(m *testing.M) {
	fmt.Println("Get ready to start main testing")
	m.Run()
}

func BenchmarkAll(b *testing.B) {
	for n := 0; n < b.N; n++ {
		Point1to20()
	}
}
