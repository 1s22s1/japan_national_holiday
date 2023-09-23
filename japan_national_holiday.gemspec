# frozen_string_literal: true

require_relative 'lib/japan_national_holiday/version'

Gem::Specification.new do |spec|
  spec.name = 'japan_national_holiday'
  spec.version = JapanNationalHoliday::VERSION
  spec.authors = ['1s22s1']
  spec.email = ['1s22s1@example.com']

  spec.summary = 'We introduce Japan National Holiday.'
  spec.description = 'We introduce Japan National Holiday.'
  spec.homepage = 'https://github.com/1s22s1/japan_national_holiday'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/1s22s1/japan_national_holiday'
  spec.metadata['changelog_uri'] = 'https://github.com/1s22s1/japan_national_holiday/blob/main/CHANGELOG.md'

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
