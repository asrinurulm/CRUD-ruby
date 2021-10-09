Rails.application.routes.draw do
    root to: 'todo#index', as: 'todo_index'
    get '/tambah', to: 'todo#tambah', as: 'todo_tambah'
    post '/tambah/kirim', to: 'todo#kirim', as: 'todo_kirim'
    get '/:id/edit', to: 'todo#edit', as: 'todo_edit'
    patch '/:id/edit/update', to: 'todo#update', as: 'todo_update'
    delete '/:id/delete', to: 'todo#destroy', as: 'todo_destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
