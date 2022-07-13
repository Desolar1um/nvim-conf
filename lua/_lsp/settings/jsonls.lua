local schemas = {
  {
    description = "The AWS Serverless Application Model (AWS SAM, previously known as Project Flourish) extends AWS CloudFormation to provide a simplified way of defining the Amazon API Gateway APIs, AWS Lambda functions, and Amazon DynamoDB tables needed by your serverless application.",
    fileMatch = {
      "serverless.template",
      "*.sam.json",
      "sam.json",
    },
    url = "https://raw.githubusercontent.com/awslabs/goformation/v5.2.9/schema/sam.schema.json",
  },
  {
    description = "Json schema for properties json file for a GitHub Workflow template",
    fileMatch = {
      ".github/workflow-templates/**.properties.json",
    },
    url = "https://json.schemastore.org/github-workflow-template-properties.json",
  },
    {
    description = "Packer template JSON configuration",
    fileMatch = {
      "packer.json",
    },
    url = "https://json.schemastore.org/packer.json",
  },
  {
    description = "Json schema for Github Workflows actions",
    fileMatch = {
		".github/workflows/**.yaml",
		".github/workflows/**.yml",
				},
    url = "https://json.schemastore.org/github-workflow.json",
    },
  {
	description = "Json schema for Github Actions metadata",
    fileMatch = {
		".github/workflows/**.yaml",
		".github/workflows/**.yml",
    },
    url = "https://json.schemastore.org/github-action.json",
  },
  {
    description = "Schema for Docker Compose files",
    fileMatch = {
		"**compose.yaml",
		"**compose.yml",
    },
    url = "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json",
  },
  {
    description = "Schema for YAMLlint rules",
    fileMatch = {
		"**.yaml",
		"**.yml",
  },
   url = "https://json.schemastore.org/yamllint.json",
  }
}

local opts = {
  settings = {
    json = {
      schemas = schemas,
    },
  },
  setup = {
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line "$", 0 })
        end,
      },
    },
  },
}

return opts
