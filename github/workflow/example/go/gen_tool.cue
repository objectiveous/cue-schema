package go
import (
	"tool/file"
	"encoding/yaml"
)

command: generateworkflow: {
	task: write: file.Create & {
		filename: ".github/workflows/test.yaml"
		contents: """
		// Code generated by github.com/heetch/cue-schema/github/workflow/generate. DO NOT EDIT.
		\(yaml.Marshal(Workflow))
		"""
	}
}
