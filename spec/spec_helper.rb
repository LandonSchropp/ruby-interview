RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    # This option will default to `true` in RSpec 4. It makes the `description` and
    # `failure_message` of custom matchers include text for helper methods defined using `chain`.
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on a real object. This is
    # generally recommended, and will default to `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  # This option will default to `:apply_to_host_groups` in RSpec 4 (and will have no way to turn it
  # off
  config.shared_context_metadata_behavior = :apply_to_host_groups

  # This allows you to limit a spec run to individual examples or groups you care about by tagging
  # them with `:focus` metadata.
  config.filter_run_when_matching :focus

  # Allows RSpec to persist some state between runs in order to support the `--only-failures` and
  # `--next-failure` CLI options. We recommend you configure your source control system to ignore
  # this file.
  config.example_status_persistence_file_path = 'spec/examples.txt'

  # Limits the available syntax to the non-monkey patched syntax that is recommended.
  config.disable_monkey_patching!

  # This setting enables warnings. It's recommended, but in some cases may be too noisy due to
  # issues in dependencies.
  config.warnings = true

  # Many RSpec users commonly either run the entire suite or an individual file, and it's useful to
  # allow more verbose output when running an individual spec file.
  if config.files_to_run.one?
    # Use the documentation formatter for detailed output, unless a formatter has already been
    # configured.
    config.default_formatter = 'doc'
  end

  # Run specs in random order to surface order dependencies.
  config.order = :random

  # Seed global randomization in this process using the `--seed` CLI option.
  Kernel.srand config.seed
end
