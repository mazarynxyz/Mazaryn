defmodule MazarynWeb.HomeLive.Notification do
  use MazarynWeb, :live_view
  alias Account.Users

  # case reload home page
  @impl true
  def mount(_params, %{"user_id" => user_email} = _session, socket) do
    {:ok, user} = Users.one_by_email(user_email)

    IO.inspect(user, label: "======================")

    {:ok,
     socket
     |> assign(target_user: user)
     |> assign(search: "")
     |> assign(notifs: get_all_user_notifs(user))}
  end

  def render(assigns) do
    ~H"""
    <!-- navigation -->
    <.live_component
      module={MazarynWeb.HomeLive.NavComponent}
      id="navigation"
      user={@target_user}
      search={@search}
    />
    <!-- Three columns -->
    <div class="bg-[#FAFAFA]">
      <div class="flex flex-wrap w-[90%] max-w-[1440px] mx-auto">
        <div class="w-full lg:w-[18%] py-6">
          <.live_component
            module={MazarynWeb.HomeLive.LeftSidebarComponent}
            id="leftsidebar"
            user={@target_user}
          />
        </div>

        <div class="w-full lg:w-[54%] py-6 pl-11 pr-8">
          <div class="flex flex-wrap justify-center align-center mb-6">
            <div class="w-full bg-white white:bg-gray-800 custom-box-shadow pr-[1.35rem] pl-[1.6rem] pb-2 pt-5 mt-8 rounded-[20px]">
              <%= for {user, message} <- @notifs do %>
                <div class="flex justify-between align-center items-center mb-5">
                  <div class="flex justify-center items-center">
                    <img
                      class="h-11 w-11 rounded-full"
                      src={user.avatar_url || "/images/default-user.svg"}
                    />
                    <div class="ml-3.5 text-sm leading-tight mt-5">
                      <span class="block text-[#60616D] text-sm"><%= user.username %></span>
                      <span class="block text-[#60616D] text-sm"><%= message %></span>
                      <span class="block text-[#60616D] text-sm">llllll</span>
                    </div>
                  </div>
                </div>
              <% end %>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end

  defp get_all_user_notifs(user) do
    user.id
    |> Core.NotifEvent.get_all_notifs()
    |> IO.inspect(label: "==============================")
    |> Enum.map(fn {:notif, _notif_id, actor_id, target_id, message, _time_stamp, _metadata} ->
      {:ok, user} = get_user(actor_id, target_id) |> IO.inspect(label: "===============")
      {user, message}
    end)
  end

  defp get_user(actor_id, target_id) do
    id =
      case actor_id do
        :undefined -> target_id
        actor_id -> actor_id
      end

    Users.one_by_id(id)
  end
end
