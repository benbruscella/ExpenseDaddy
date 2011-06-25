RailsAdmin.config do |config|
  config.model User do
    object_label_method do
      :custom_label_method
    end
  end
  config.model Transaction do
    object_label_method do
      :custom_label_method
    end
    list do
      field :user_id do
        label "Who"
      end
      field :amount
      field :transaction_type_id do
        label "Type"
      end      
      field :category_id
      field :spent_at
    end
  end
  config.model TransactionType do
    object_label_method do
      :custom_label_method
    end
  end
end