package main

import (
	"github.com/prb112/openshift-demo/mutating/pkg/webhook"
	"k8s.io/component-base/cli"
	"os"
)

func main() {
	command := webhook.NewWebhookCommand()
	code := cli.Run(command)
	os.Exit(code)
}
