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
  end
  config.model TransactionType do
    object_label_method do
      :custom_label_method
    end
  end
end