package utils

import (
	"log"
	"os"
)

var Logger = log.New(os.Stdout, "LOG: ", log.Ldate|log.Ltime|log.Lshortfile)