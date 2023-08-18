package main

import (
	"fmt"
    "syscall/js"
	"time"
)

func main() {
    // Prints to browser JS-Console
    fmt.Printf("Time is: %v\n", time.Now().Local())

    msg := fmt.Sprintf("Hello from Go-Wasm\n\ncurrent Time: %v",  time.Now().Local());
   
    // Invokes the browsers Alert-Message
    alert := js.Global().Get("alert");
    alert.Invoke(msg);
}

