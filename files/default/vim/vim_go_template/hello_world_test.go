package main

import "testing"

func TestHello(t *testing.T) {

        //assertCorrectMessage := func(t *testing.T, input string, desired_out []string) {

        var d *Data = NewData("blah")
        got := d.hello()
        want := "blah"

        if got != want {
                t.Errof("got %q want %q", got, want)
        }
}
