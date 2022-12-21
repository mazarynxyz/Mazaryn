defmodule MazarynWeb.Component.SelectLive do
  use MazarynWeb, :live_component

  @impl true
  def render(assigns) do
    ~H"""
    <div class="relative inline-block text-left">
      <button phx-click={Phoenix.LiveView.JS.toggle(to: ".dropdown-menu-globe", in: "fade-in-scale", out: "fade-out-scale" )} type="button"
        class="dropdown inline-flex justify-center w-full rounded-[10px] border-0 shadow-sm px-2.5 py-2.5 bg-[#FAFAFA] text-sm font-medium text-gray-700 flex-shrink-0 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-100 focus:ring-indigo-500" aria-expanded="true" aria-haspopup="true">
        <div class="rounded-full flex-shrink-0">
          <i>
            <svg class="h-5 w-5 mr-2.5 fill-[#60616D]" width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M2.74805 3.85742C2.61035 3.88965 2.69824 3.88379 2.58398 3.89844C2.09473 4.00391 2.45801 4.09766 2.74805 3.85742ZM11.3525 4.05371C11.3877 4.03027 11.5107 3.91016 11.127 3.79297C11.1504 3.91309 11.0479 3.90137 11.0479 3.96875C11.332 4.22656 11.4492 4.6748 11.8125 4.76855C11.8828 4.44629 11.4902 4.28809 11.3525 4.05371ZM2.4873 3.76367C2.53125 4.02441 2.72754 3.48828 2.73047 3.29785C2.6543 3.3418 2.57812 3.38574 2.49902 3.4209C2.68359 3.51465 2.52246 3.61426 2.32324 3.76367C1.91895 4.26758 2.70117 3.37109 2.4873 3.76367ZM7.5 0.5C3.35742 0.5 0 3.85742 0 8C0 12.1396 3.35742 15.5 7.5 15.5C11.6426 15.5 15 12.1396 15 8C15 3.85742 11.6426 0.5 7.5 0.5ZM7.69922 3.01367L7.73438 3.02539C7.59375 3.20703 8.4668 3.7373 7.83984 3.78125C7.25391 3.94824 8.08594 3.62891 7.63184 3.68457C7.87207 3.35059 7.44141 3.34473 7.69922 3.01367ZM4.14258 3.49414C3.93164 3.31836 3.26953 3.73438 3.50098 3.63477C4.0752 3.40918 3.53906 3.6582 3.67383 3.92773C3.55078 4.18262 3.63281 3.67578 3.32812 3.97754C3.1084 4.02734 2.56934 4.52539 2.63672 4.37305C2.61914 4.61035 1.99512 4.8916 1.91016 5.28711C1.70508 5.83496 1.86035 5.2666 1.82227 5.05273C1.5293 4.68066 0.996094 5.68262 1.1543 6.07812C1.4209 5.60938 1.40039 6.02832 1.20703 6.23633C1.40332 6.59668 1.02832 7.06543 1.40039 7.33203C1.56445 7.37012 1.89258 6.78125 1.74902 7.39356C1.84863 6.86328 2.02441 7.51953 2.30859 7.37305C2.32617 7.65137 2.49902 7.52246 2.53711 7.85937C3.01172 7.82422 3.44531 8.62695 2.87988 8.7793C2.96484 8.75586 3.13184 8.90527 3.3252 8.79102C3.65332 9.05176 4.51758 9.08398 4.54102 9.72852C3.94629 10.0127 4.39453 10.792 3.87891 11.0703C3.28711 10.9824 3.67676 11.7998 3.42773 11.7061C3.52734 12.2949 2.83008 11.6299 3.09961 11.9551C3.59473 12.2598 2.88281 12.1982 3.10547 12.4209C2.85645 12.3682 3.26074 12.8838 3.32812 13.0742C3.68555 13.6543 3.02051 12.9453 2.82422 12.752C2.63672 12.377 2.19434 11.6592 2.07129 11.0703C2.00098 10.2148 1.33887 9.64062 1.18652 8.80566C1.03418 8.33984 1.60547 7.59277 1.29785 7.33203C1.03125 7.12402 1.13965 6.41211 0.981445 6.03711C1.37695 4.32324 2.63379 2.87891 4.14258 2.02344C3.9873 2.1377 5.03027 1.72754 4.91016 1.82715C4.87793 1.90039 5.51953 1.54883 5.90625 1.49609C5.86523 1.50195 4.90137 1.84766 5.16797 1.80078C4.75488 2.00293 5.12695 1.88867 5.33203 1.78613C4.92188 2.08789 4.60547 2.00293 4.13965 2.26953C3.6709 2.39258 3.76758 2.87891 3.43359 3.12207C3.62988 3.15723 4.12207 2.61523 4.40918 2.4248C5.06836 2.10547 4.0752 3.00488 4.70215 2.61816C4.49121 2.81445 4.53516 3.12793 4.40625 3.21582C4.3418 3.19824 4.66113 3.36816 4.14258 3.49414ZM5.16797 2.14648C5.10059 2.2373 5.00684 2.43359 4.95117 2.31348C4.875 2.35156 4.8457 2.51562 4.70215 2.38379C4.78711 2.32227 4.875 2.17578 4.70801 2.2666C4.78418 2.18457 5.46387 1.95312 5.42578 1.86523C5.5459 1.78906 5.53418 1.75098 5.39648 1.79785C5.32617 1.77441 5.56348 1.5752 5.87988 1.54883C5.92383 1.54883 5.94141 1.57812 5.8623 1.56934C5.38477 1.71582 5.58984 1.6748 5.91211 1.56934C5.78906 1.63965 5.7041 1.66016 5.68359 1.69238C6.00586 1.5752 5.66602 1.77734 5.73926 1.7627C5.64844 1.80957 5.75391 1.82422 5.57812 1.8916C5.61035 1.86523 5.29102 2.08203 5.48145 2.01758C5.29688 2.19336 5.21484 2.19629 5.16797 2.14648ZM5.44922 2.56543C5.45508 2.28418 5.85938 2.10547 5.80957 2.09082C6.30762 1.85645 5.63672 2.09961 6.0293 1.88867C6.17578 1.87402 6.48633 1.40527 6.91699 1.37598C7.3916 1.23242 7.17187 1.38477 7.52344 1.25L7.45312 1.30859C7.3916 1.31738 7.46777 1.42578 7.24512 1.58984C7.22168 1.84473 6.82031 1.72754 7.01953 2C6.89062 1.81543 6.69727 1.99414 6.94043 2.01172C6.67969 2.21094 6.07324 2.24609 5.7832 2.57715C5.5957 2.84668 5.42285 2.76172 5.44922 2.56543ZM7.53223 3.50293C7.33301 3.9834 7.13965 3.43262 7.49121 3.34473C7.5791 3.3916 7.61426 3.40625 7.53223 3.50293ZM6.78223 2.54199C6.72363 2.3252 6.77051 2.43945 7.11914 2.33691C7.35938 2.50977 6.90527 2.62402 6.78223 2.54199ZM12.2373 11.1406C11.9619 10.666 12.5713 10.2266 12.7764 9.82812C12.75 10.2939 12.6914 10.7539 12.2373 11.1406ZM13.2744 5.71777C12.9756 5.74121 12.7061 5.81152 12.4365 5.6416C11.8154 4.96191 12.5508 6.40918 12.7559 5.81738C13.4941 6.09863 12.7441 7.31152 12.2783 7.18555C12.0176 6.62305 11.6953 6.00488 11.127 5.72949C11.5635 6.21289 11.7803 6.80762 12.249 7.24414C12.2813 7.85352 12.8994 7.02148 12.8613 7.49316C12.9199 8.30469 11.9443 8.79102 12.1143 9.60547C12.4775 10.3467 11.4141 10.4814 11.5342 11.1465C11.1064 11.624 10.6494 12.2686 9.88184 12.166C9.88184 11.7617 9.67676 11.4189 9.62988 11.0029C9.21387 10.4756 10.0693 9.91016 9.53906 9.35938C8.92676 9.22168 9.66504 8.37793 9.03516 8.45703C8.65723 8.0791 8.10352 8.44531 7.56152 8.44824C6.88184 8.5127 6.18164 7.61328 6.4834 6.97754C6.24316 6.31543 7.24512 6.12207 7.27148 5.53906C7.75195 5.1377 8.43457 5.1875 9.08496 5.09375C9.03809 5.55957 9.53027 5.5625 9.90234 5.71777C10.1104 5.21387 10.7578 5.7998 11.2002 5.48047C11.3525 4.73633 10.7695 5.18457 10.4355 4.94727C10.0312 4.35547 11.2998 4.64258 11.168 4.33203C10.6758 4.3291 10.9541 3.72559 10.6055 4.0625C10.9189 4.11816 10.5498 4.36426 10.5586 4.08301C10.084 3.94531 10.541 4.62207 10.3008 4.68652C9.93457 4.53418 10.1074 4.85938 10.1455 4.90918C9.9873 5.25195 9.79395 4.40527 9.3457 4.42871C8.90039 4.02148 9.16992 4.61328 9.55664 4.70996C9.47461 4.7334 9.60352 5.07031 9.50098 4.92676C9.18164 4.4873 8.5752 4.19434 8.21484 4.7334C8.17676 5.2373 7.15137 5.38086 7.31543 4.79199C7.07519 4.18262 8.05957 4.77441 7.96875 4.28809C7.33594 3.86914 8.1416 4.00391 8.35547 3.61133C8.8418 3.62598 8.37598 3.21289 8.60449 3.09277C8.58105 3.54102 8.97656 3.45605 9.29004 3.37109C9.21387 3.11328 9.47754 3.12207 9.31641 2.9082C10.043 2.61816 8.7627 3.04297 9.02051 2.40723C8.70703 2.19043 8.88867 2.88477 9.02051 2.95801C9.0293 3.17188 8.84766 3.43555 8.59863 2.9873C8.23535 3.22461 8.27344 2.74707 8.25 2.79688C8.20898 2.6123 8.52539 2.60352 8.52832 2.28125C8.50195 2.07617 8.50781 1.96777 8.6543 1.95605C8.66602 1.98535 9.25488 1.99414 9.46289 2.2373C8.89453 2.12305 9.37793 2.33105 9.63281 2.44824C9.36035 2.23438 9.74121 2.44824 9.51855 2.20508C9.60644 2.22266 9.27539 1.87109 9.61523 2.17871C9.43066 1.95898 9.97559 2.02344 9.65332 1.85938C10.125 1.99121 9.84668 1.87109 9.56836 1.75098C8.80078 1.29395 10.9248 2.36914 10.0576 1.8916C10.6113 2.01172 8.87402 1.46387 9.66504 1.7041C9.36328 1.57227 9.65625 1.64551 9.92871 1.73047C9.43945 1.57812 8.70703 1.29395 8.73633 1.28223C8.90625 1.29395 9.07324 1.33203 9.23438 1.37891C9.73535 1.52832 9.09082 1.34375 9.22852 1.34668C10.9512 1.78906 12.46 2.94336 13.377 4.45215C13.5908 4.67773 14.1738 6.16895 13.8691 5.50684C14.0068 6.03418 14.0273 6.60254 14.1006 7.1416C13.9482 6.97168 13.7783 6.34473 13.6318 5.99609C13.5703 6.13086 13.5 5.80566 13.2744 5.71777Z" fill="#60616D"/>
            </svg>
          </i>
        </div>
        <p class="text-[#5D5F63] font-normal capitalize"><%= @selected_option %></p>
        <i><%= Heroicons.icon("chevron-down", class: "-mr-1 ml-2 h-5 w-5 fill-[#60616D]") %> </i>
      </button>
      <ul class="hidden dropdown-menu-globe  max-w-[135px] origin-top-right absolute right-0 mt-2 w-56 rounded-md shadow-lg bg-white ring-1 ring-black ring-opacity-5 focus:outline-none"
      role="menu" aria-orientation="vertical" aria-labelledby="menu-button" tabindex="-1">
          <%= for {option, idx} <- Enum.with_index(@options) do %>
            <li phx-click="select-item" phx-value-selected-item={"#{option}"} phx-target={@myself}  id={"#{idx}"} class="capitalize text-gray-700 block px-8 py-2 text-sm hover:bg-gray-100" role="menuitem" tabindex="-1">
              <%= option %>
            </li>
            <% end %>
            <%= hidden_input @f, @name, value: @selected_option %>
      </ul>
    </div>
    """
  end

  @impl true
  def update(assigns, socket) do
    %{f: f, name: name, options: options} = assigns

    value =
      Map.get(f.params, "#{name}") ||
        Map.get(f.data, name)

    selected_option = Enum.find(options, &(&1 == value)) || List.first(options)

    socket =
      socket
      |> assign(:selected_option, selected_option)

    {:ok, assign(socket, assigns)}
  end

  def handle_event("select-item", %{"selected-item" => selected_item} = _params, socket) do
    socket = assign(socket, selected_option: selected_item)
    {:noreply, socket}
  end
end
