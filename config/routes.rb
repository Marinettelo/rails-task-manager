Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    "tasks",          to: "tasks#index"

  get    "tasks/new",      to: "tasks#new"
  post   "tasks",          to: "tasks#create"

  # NB: The `show` route needs to be *after* `new` route.
  get    "tasks/:id",      to: "tasks#show"

  get    "tasks/:id/edit", to: "tasks#edit"
  patch  "tasks/:id",      to: "tasks#update"

  delete "tasks/:id",      to: "tasks#destroy"



end


# link to controller def index         # GET /restaurants
# end

# def show          # GET /restaurants/:id
# end

# def new           # GET /restaurants/new
# end

# def create        # POST /restaurants
# end

# def edit          # GET /restaurants/:id/edit
# end

# def update        # PATCH /restaurants/:id
# end

# def destroy       # DELETE /restaurants/:id
# end
