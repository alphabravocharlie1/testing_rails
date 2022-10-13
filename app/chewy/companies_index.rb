class CompaniesIndex < Chewy::Index
  settings analysis: {
    analyzer: {
      com_name: {
        tokenizer: 'keyword',
        filter: ['lowercase']
      }
    }
  }

  define_type Company do
    field :user_id
    field :com_name, analyzer: 'com_name'
  end
end