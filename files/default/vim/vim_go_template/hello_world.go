package main

import "fmt"

type Data struct {
        r string
}

func NewData(input string) *Data {
        return &Data{
                r: input,
        }
}

func (h *Data) hello() string {
        return h.r
}
