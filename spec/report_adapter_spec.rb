# frozen_string_literal: true

require "./spec/spec_helper"

describe ReportAdapter do
  let(:haml_lint_report) do
    JSON(File.read("./spec/fixtures/report.json"))
  end

  let(:adapter) { ReportAdapter }

  it ".conclusion" do
    result = adapter.conclusion(haml_lint_report)
    expect(result).to eq("failure")
  end

  it ".summary" do
    result = adapter.summary(haml_lint_report)
    expect(result).to eq("23 offense(s) found")
  end

  it ".annotations" do
    result = adapter.annotations(haml_lint_report)
    expect(result.first).to eq(
      "path" => "app/views/articles/_form.html.haml",
      "start_line" => 4,
      "end_line" => 4,
      "annotation_level" => "warning",
      "message" => "UnnecessaryStringOutput: `= \"...\"` should be rewritten as `...`"
    )
  end
end
