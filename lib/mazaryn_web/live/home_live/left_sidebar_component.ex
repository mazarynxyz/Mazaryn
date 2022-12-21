defmodule MazarynWeb.HomeLive.LeftSidebarComponent do
  use MazarynWeb, :live_component

  def render(assigns) do
    ~H"""
    <div>
        <div class="social-box w-full bg-white white:bg-gray-800 py-6 px-5 rounded-[20px]">
            <div class="flex justify-between align-center items-center">
                <div class="flex justify-center items-center">
                    <ul>
                        <li class="flex align-center items-center mx-2 mb-7">
                            <%= live_redirect to: Routes.live_path(@socket, MazarynWeb.HomeLive.Home), replace: false, class: "flex align-center items-start text-xl text-gray-500 font-semibold hover:text-blue-500" do %>
                                <i>
                                    <svg class="h-5 w-5 mr-3.5 fill-[#CFD0DD]" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path class="fill-[#CFD0DD]" d="M19.6488 7.86157L17.1463 5.82204V2.56025C17.1463 2.19294 16.8474 1.89407 16.4801 1.89407H14.9055C14.5382 1.89407 14.2393 2.19294 14.2393 2.56025V3.45274L10.8955 0.72753C10.6537 0.530462 10.3349 0.421875 9.99789 0.421875C9.66226 0.421875 9.34497 0.529796 9.10442 0.725834L0.351262 7.86151C-0.046447 8.18558 -0.0225857 8.46785 0.0270144 8.60727C0.0764932 8.74638 0.235831 8.97978 0.746729 8.97978H1.94531V18.3636C1.94531 19.0333 2.48867 19.5781 3.15654 19.5781H6.94164C7.60389 19.5781 8.1226 19.0446 8.1226 18.3636V14.5155C8.1226 14.1857 8.42571 13.8853 8.7585 13.8853H11.3021C11.6193 13.8853 11.8774 14.168 11.8774 14.5155V18.3636C11.8774 19.0219 12.446 19.5781 13.1189 19.5781H16.8435C17.5114 19.5781 18.0547 19.0333 18.0547 18.3636V8.97978H19.2533C19.7642 8.97978 19.9235 8.74638 19.973 8.60727C20.0226 8.46785 20.0465 8.18558 19.6488 7.86157Z" />
                                    </svg>
                                </i>
                                <div class="text-[#CFD0DD] leading-6">Home</div>
                            <% end %>
                        </li>
                        <li class="flex align-center items-center mx-2 mb-7">
                            <a href="index.html" class="flex items-start text-xl text-gray-500 font-semibold hover:text-blue-500 ">
                                <i>
                                    <svg class="h-5 w-5 mr-3.5" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <g clip-path="url(#clip0_390_1350)">
                                        <path d="M19.1328 17.2236C18.5592 16.9973 18.0578 16.6081 17.6961 16.1015C19.1126 15.1443 20.0003 13.7723 20.0003 12.2479C20.0003 10.5798 18.9375 9.09385 17.2818 8.13477C17.1069 12.1761 12.8179 15.0539 7.9919 15.0539C7.58572 15.0539 7.1832 15.033 6.78516 14.9936C8.0419 16.4887 10.2939 17.4853 12.8634 17.4853C13.8006 17.4853 14.6955 17.3525 15.5154 17.1115C16.249 17.798 17.2926 18.131 18.3518 17.9139C18.6362 17.8556 18.9041 17.7613 19.1516 17.6366C19.2313 17.5965 19.2801 17.5133 19.276 17.4241C19.2719 17.3348 19.2159 17.2564 19.1328 17.2236Z" fill="#CFD0DD"/>
                                        <path d="M15.9831 7.88507C15.9831 4.64616 12.4052 2.02051 7.99157 2.02051C3.57796 2.02051 0 4.64616 0 7.88507C0 9.59189 0.993913 11.1282 2.57987 12.1999C2.16378 12.7828 1.58261 13.2268 0.918435 13.477C0.835 13.5085 0.777739 13.5858 0.772174 13.6748C0.766609 13.7638 0.813826 13.8478 0.892739 13.8894C1.40926 14.1613 1.98974 14.3032 2.56978 14.3032C3.49617 14.3032 4.36878 13.9423 5.022 13.3311C5.94009 13.6009 6.94213 13.7496 7.99161 13.7496C12.4052 13.7496 15.9831 11.124 15.9831 7.88507Z" fill="#CFD0DD"/>
                                        </g>
                                        <defs>
                                        <clipPath id="clip0_390_1350">
                                        <rect width="20" height="20" fill="white"/>
                                        </clipPath>
                                        </defs>
                                    </svg>
                                </i>
                                <div class="text-[#CFD0DD] leading-6">Chat</div>
                            </a>
                        </li>

                        <li class="flex align-center items-center mx-2 mb-7">
                            <a href="index.html" class="flex items-start text-xl text-gray-500 font-semibold hover:text-blue-500">
                                <i><%= Heroicons.icon("users", class: "h-6 w-5 mr-3.5 fill-[#CFD0DD]") %></i>
                                <div class="leading-6 text-[#CFD0DD]">Group</div>
                            </a>
                        </li>

                        <li class="flex align-center items-center mx-2">
                            <a href="index.html" class="flex items-start text-xl text-gray-500 font-semibold hover:text-blue-500">
                                <i>
                                    <svg class="h-6 w-5 mr-3.5 fill-[#CFD0DD]" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path class="fill-[#CFD0DD]" d="M10 11.25C10.6904 11.25 11.25 10.6904 11.25 10C11.25 9.30964 10.6904 8.75 10 8.75C9.30964 8.75 8.75 9.30964 8.75 10C8.75 10.6904 9.30964 11.25 10 11.25Z" />
                                        <path class="fill-[#CFD0DD]" d="M18.2425 8.60032L17.5842 6.50033C17.5131 6.25762 17.3939 6.03172 17.2336 5.83609C17.0733 5.64047 16.8753 5.47913 16.6513 5.36169C16.4274 5.24426 16.182 5.17314 15.93 5.15257C15.6779 5.13201 15.4243 5.16242 15.1842 5.24199L14.9009 5.33366C14.6789 5.40703 14.4425 5.42565 14.2118 5.38792C13.9811 5.35019 13.7629 5.25724 13.5759 5.11699L13.4842 5.05033C13.3017 4.91064 13.1546 4.73001 13.0547 4.52302C12.9548 4.31602 12.905 4.08845 12.9092 3.85866V3.62533C12.9133 3.10201 12.7095 2.59848 12.3426 2.22533C12.168 2.04904 11.9604 1.90896 11.7316 1.81314C11.5028 1.71733 11.2573 1.66766 11.0092 1.66699H8.88422C8.37436 1.67358 7.88776 1.88132 7.53034 2.24498C7.17293 2.60864 6.97364 3.09877 6.97588 3.60866V3.80866C6.97508 4.05055 6.92001 4.28918 6.81473 4.50696C6.70944 4.72474 6.55663 4.91612 6.36755 5.06699L6.25922 5.15033C6.05034 5.30834 5.80602 5.41296 5.54751 5.45507C5.289 5.49719 5.02412 5.47554 4.77588 5.39199C4.5479 5.3131 4.30627 5.28128 4.06563 5.29847C3.82499 5.31566 3.59034 5.38149 3.37588 5.49199C3.1526 5.60281 2.9545 5.7584 2.79393 5.94908C2.63337 6.13975 2.51376 6.36143 2.44255 6.60033L1.75922 8.76699C1.60075 9.25549 1.64139 9.78678 1.87231 10.2455C2.10322 10.7042 2.50578 11.0533 2.99255 11.217H3.12588C3.35043 11.3011 3.55197 11.4371 3.71414 11.6137C3.87631 11.7903 3.99453 12.0027 4.05922 12.2337L4.10922 12.367C4.20211 12.6221 4.23318 12.8956 4.19986 13.165C4.16654 13.4345 4.06979 13.6922 3.91755 13.917C3.6094 14.3366 3.47942 14.861 3.55589 15.376C3.63236 15.891 3.90909 16.355 4.32588 16.667L6.05088 17.9753C6.37751 18.2128 6.77208 18.3385 7.17588 18.3337C7.28396 18.3442 7.39281 18.3442 7.50088 18.3337C7.75097 18.2852 7.98857 18.1864 8.19918 18.0431C8.4098 17.8998 8.58901 17.7152 8.72588 17.5003L8.91755 17.2253C9.052 17.0325 9.2299 16.8739 9.4369 16.7624C9.6439 16.651 9.8742 16.5897 10.1092 16.5837C10.3555 16.5776 10.5993 16.634 10.8179 16.7477C11.0365 16.8614 11.2227 17.0285 11.3592 17.2337L11.4592 17.3753C11.6013 17.5868 11.7852 17.7669 11.9995 17.9046C12.2138 18.0423 12.4541 18.1347 12.7054 18.1761C12.9568 18.2175 13.214 18.207 13.4611 18.1452C13.7083 18.0834 13.9402 17.9717 14.1426 17.817L15.8342 16.5503C16.2342 16.2397 16.5002 15.7878 16.5777 15.2873C16.6551 14.7868 16.5382 14.2757 16.2509 13.8587L16.0342 13.542C15.9039 13.3407 15.8186 13.1136 15.7841 12.8763C15.7496 12.639 15.7667 12.3971 15.8342 12.167C15.9031 11.9207 16.0308 11.6949 16.2065 11.509C16.3822 11.3232 16.6005 11.1829 16.8425 11.1003L17.0092 11.042C17.4915 10.8746 17.8898 10.5263 18.1199 10.0707C18.3501 9.61507 18.3941 9.08779 18.2425 8.60032ZM10.0009 12.917C9.42402 12.917 8.86011 12.7459 8.38047 12.4254C7.90083 12.105 7.52699 11.6494 7.30623 11.1165C7.08548 10.5835 7.02772 9.99709 7.14026 9.43131C7.2528 8.86553 7.53059 8.34583 7.93849 7.93793C8.34639 7.53003 8.86609 7.25224 9.43187 7.1397C9.99765 7.02716 10.5841 7.08492 11.117 7.30568C11.65 7.52643 12.1055 7.90027 12.426 8.37991C12.7465 8.85955 12.9176 9.42346 12.9176 10.0003C12.9176 10.7739 12.6103 11.5157 12.0633 12.0627C11.5163 12.6097 10.7744 12.917 10.0009 12.917Z" />
                                    </svg>
                                </i>
                                <div class="leading-6 text-[#CFD0DD]">Settings</div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="social-box w-full bg-white white:bg-gray-800 py-6 px-5 my-8 rounded-[20px]">
            <div class="flex justify-between align-center items-center">
                <div class="flex justify-center items-center">
                    <ul>
                        <li class="flex align-center items-center group mx-2 mb-7">
                            <%= live_patch to: Routes.live_path(@socket, MazarynWeb.HomeLive.Home), replace: false, class: "flex items-start text-xl text-gray-500 font-semibold group-hover:text-blue-500" do %>
                                <i>
                                    <svg class="h-6 w-5 mr-3.5 fill-[#CFD0DD]" width="20" height="18" viewBox="0 0 20 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path class="fill-[#CFD0DD]" d="M18.75 8.375V6.5C18.75 5.80961 18.1903 5.25 17.5 5.25H3.75C3.06063 5.25 2.5 4.68937 2.5 4C2.5 3.31063 3.06063 2.75 3.75 2.75H17.5C18.1903 2.75 18.75 2.19031 18.75 1.5C18.75 0.809687 18.1903 0.25 17.5 0.25H3.75C1.68211 0.25 0 1.93215 0 4V5.25V15.25C0 16.6307 1.11937 17.75 2.5 17.75H17.5C18.1903 17.75 18.75 17.1904 18.75 16.5V14.625C19.4403 14.625 20 14.0654 20 13.375V9.625C20 8.93461 19.4403 8.375 18.75 8.375ZM16.875 12.75C16.1847 12.75 15.625 12.1904 15.625 11.5C15.625 10.8096 16.1847 10.25 16.875 10.25C17.5653 10.25 18.125 10.8096 18.125 11.5C18.125 12.1904 17.5653 12.75 16.875 12.75Z" />
                                    </svg>
                                </i>
                                <div  class="leading-6 text-[#CFD0DD]">Wallet</div>
                            <% end %>
                        </li>

                        <li class="flex align-center items-center mx-2 mb-7">
                            <a href="index.html" class="flex items-center text-xl text-gray-500 font-semibold hover:text-blue-500">
                                <i>
                                    <svg class="h-5 w-5 mr-3.5 fill-[#CFD0DD]" width="16" height="18" viewBox="0 0 16 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M15 7H16V18H0V7H1V5C1 2.24 3.24 -2.23031e-07 6 -2.23031e-07C6.71 -2.23031e-07 7.39 0.15 8 0.42C8.6301 0.142126 9.31135 -0.000934361 10 -2.23031e-07C12.76 -2.23031e-07 15 2.24 15 5V7ZM3 5V7H5V5C5 3.87 5.39 2.84 6.02 2H6C4.35 2 3 3.35 3 5ZM13 7V5C13 3.35 11.65 2 10 2H9.98C10.6376 2.86228 10.9957 3.91562 11 5V7H13ZM8 2.78C7.39 3.33 7 4.12 7 5V7H9V5C9 4.12 8.61 3.33 8 2.78Z" fill="#CFD0DD"/>
                                    </svg>
                                </i>
                                <div  class="leading-6 text-[#CFD0DD]">My Products</div>
                            </a>
                        </li>

                        <li class="flex align-center items-center mx-2 group">
                            <%= live_patch to: Routes.live_path(@socket, MazarynWeb.UserLive.Profile,  @user.username), replace: false, class: "flex items-center text-xl text-gray-500 font-semibold group-hover:text-blue-500" do %>
                                <%= if @user.avatar_url do %>
                                    <img src={"#{@user.avatar_url}"} class="h-5 w-5 mr-3.5 rounded-full ring-blue-500 group-hover:ring"/>
                                <% else %>
                                    <img alt="Default user" src={Routes.static_path(@socket, "/images/default-user.svg")} class="opacity-70 h-5 w-5 mr-3.5 rounded-full ring-blue-500 group-hover:ring"/>
                                <% end %>

                                <div class="leading-6 text-[#CFD0DD] group-hover:text-blue-500 ">
                                    @<%= @user.username %>
                                </div>
                            <% end %>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="font-medium text-xl leading-6 text-[#60616D]">Explore</div>

        <div class="social-box w-full bg-white white:bg-gray-800 py-6 px-5 my-6 rounded-[20px]">
            <div class="flex justify-between align-center items-center">
                <div class="flex justify-center items-center">
                    <ul>
                        <li class="flex align-center items-center group mx-2 mb-7">
                            <a href="index.html" class="flex items-start text-xl text-gray-500 font-semibold group-hover">
                                <i>
                                    <svg class="h-5 w-5 mr-3.5 fill-[#CFD0DD] group-hover:fill-blue-500" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path class="fill-[#CFD0DD]" d="M18.7491 10L19.8531 8.09201C19.9858 7.86245 20.0219 7.5896 19.9535 7.33344C19.885 7.07728 19.7176 6.85879 19.4881 6.72601L17.5781 5.62201V3.42201C17.5781 3.1568 17.4728 2.90244 17.2852 2.71491C17.0977 2.52737 16.8433 2.42201 16.5781 2.42201H14.3791L13.2761 0.513012C13.1429 0.283928 12.9249 0.116517 12.6691 0.0470117C12.5423 0.0126276 12.4099 0.00376148 12.2796 0.0209273C12.1493 0.038093 12.0237 0.0809494 11.9101 0.147012L10.0001 1.25101L8.09013 0.146012C7.86045 0.0134094 7.58751 -0.0225252 7.33133 0.0461126C7.07516 0.11475 6.85674 0.282339 6.72413 0.512012L5.62013 2.42201H3.42113C3.15592 2.42201 2.90156 2.52737 2.71403 2.71491C2.52649 2.90244 2.42113 3.1568 2.42113 3.42201V5.62101L0.511133 6.72501C0.397165 6.79057 0.297273 6.878 0.217197 6.98227C0.137121 7.08655 0.0784389 7.20563 0.0445217 7.33265C0.0106046 7.45968 0.00212117 7.59216 0.0195588 7.72247C0.0369965 7.85279 0.0800115 7.97837 0.146133 8.09201L1.25013 10L0.146133 11.908C0.0141214 12.1378 -0.0216953 12.4104 0.0464911 12.6665C0.114678 12.9226 0.281337 13.1413 0.510133 13.275L2.42013 14.379V16.578C2.42013 16.8432 2.52549 17.0976 2.71303 17.2851C2.90056 17.4727 3.15492 17.578 3.42013 17.578H5.62013L6.72413 19.488C6.81266 19.6394 6.93907 19.765 7.09091 19.8527C7.24275 19.9404 7.4148 19.987 7.59013 19.988C7.76413 19.988 7.93713 19.942 8.09113 19.853L9.99913 18.749L11.9091 19.853C12.1388 19.9854 12.4115 20.0214 12.6676 19.9529C12.9237 19.8845 13.1422 19.7173 13.2751 19.488L14.3781 17.578H16.5771C16.8424 17.578 17.0967 17.4727 17.2842 17.2851C17.4718 17.0976 17.5771 16.8432 17.5771 16.578V14.379L19.4871 13.275C19.6009 13.2093 19.7006 13.1217 19.7805 13.0174C19.8605 12.9131 19.919 12.7941 19.9529 12.6672C19.9868 12.5402 19.9954 12.4078 19.9781 12.2776C19.9608 12.1473 19.918 12.0217 19.8521 11.908L18.7491 10ZM7.49913 4.99001C7.89709 4.99014 8.2787 5.14836 8.56 5.42985C8.8413 5.71134 8.99926 6.09305 8.99913 6.49101C8.999 6.88897 8.84079 7.27058 8.55929 7.55188C8.2778 7.83318 7.89609 7.99114 7.49813 7.99101C7.10018 7.99088 6.71857 7.83266 6.43727 7.55117C6.15596 7.26968 5.998 6.88797 5.99813 6.49001C5.99827 6.09205 6.15648 5.71045 6.43797 5.42914C6.71946 5.14784 7.10117 4.98988 7.49913 4.99001ZM7.79913 14.59L6.19913 13.391L12.1991 5.39101L13.7991 6.59001L7.79913 14.59ZM12.4991 14.99C12.3021 14.9899 12.107 14.9511 11.925 14.8756C11.7429 14.8001 11.5776 14.6896 11.4383 14.5502C11.299 14.4108 11.1885 14.2453 11.1132 14.0633C11.0378 13.8812 10.9991 13.6861 10.9991 13.489C10.9992 13.292 11.0381 13.0969 11.1135 12.9148C11.189 12.7328 11.2996 12.5674 11.439 12.4281C11.5784 12.2889 11.7438 12.1784 11.9259 12.103C12.108 12.0277 12.3031 11.9889 12.5001 11.989C12.8981 11.9891 13.2797 12.1474 13.561 12.4289C13.8423 12.7103 14.0003 13.0921 14.0001 13.49C14 13.888 13.8418 14.2696 13.5603 14.5509C13.2788 14.8322 12.8971 14.9901 12.4991 14.99Z" />
                                    </svg>
                                </i>
                                <div class="leading-6 text-[#CFD0DD] group-hover:text-blue-500">Offers</div>
                            </a>
                        </li>
                        <li class="flex align-center items-center group mx-2 mb-7">
                            <a href="index.html" class="flex items-start text-xl text-gray-500 font-semibold group-hover:text-blue-500">
                                <i>
                                    <svg class="h-5 w-5 mr-3 fill-[#CFD0DD]" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M17.9003 15.6656C17.5712 15.3365 17.1331 15.1835 16.7013 15.2087L15.5443 14.0517C16.0138 13.4522 16.4016 12.794 16.7013 12.0855C17.1541 11.0124 17.3847 9.87421 17.3847 8.70252C17.3847 7.53083 17.1541 6.39057 16.7013 5.31949C16.2633 4.28404 15.6365 3.35549 14.838 2.5569C14.0394 1.7583 13.1108 1.13158 12.0754 0.693506C11.0022 0.240759 9.86402 0.0101929 8.69235 0.0101929C7.52065 0.0101929 6.3804 0.240759 5.30932 0.693506C4.27387 1.12948 3.34532 1.7562 2.54672 2.5548C1.74813 3.3534 1.12141 4.28195 0.683334 5.3174C0.230566 6.3906 0 7.52875 0 8.70044C0 9.87212 0.230566 11.0124 0.683313 12.0835C1.12139 13.1189 1.74811 14.0475 2.5467 14.8461C3.3453 15.6447 4.27385 16.2714 5.3093 16.7094C6.38248 17.1622 7.52063 17.3928 8.69233 17.3928C9.864 17.3928 11.0043 17.1622 12.0753 16.7094C12.7922 16.4055 13.4587 16.0136 14.0645 15.5336L15.2194 16.6885C15.1964 17.1203 15.3473 17.5583 15.6764 17.8874L17.3176 19.5286C17.6236 19.8347 18.026 19.9898 18.4285 19.9898C18.8309 19.9898 19.2333 19.8368 19.5394 19.5286C20.1535 18.9145 20.1535 17.9189 19.5394 17.3047L17.9003 15.6656ZM14.0477 12.553C13.8402 12.8381 13.6097 13.1105 13.356 13.3641C13.1087 13.6115 12.8446 13.8358 12.5679 14.037C11.4486 14.8544 10.1029 15.2946 8.69021 15.2946C6.92743 15.2946 5.27155 14.6092 4.02649 13.3621C2.78144 12.117 2.09393 10.459 2.09393 8.69835C2.09393 6.93766 2.77934 5.27969 4.02649 4.03463C5.27155 2.78958 6.92953 2.10207 8.69021 2.10207C10.4509 2.10207 12.1089 2.78748 13.3539 4.03463C14.599 5.27969 15.2865 6.93766 15.2865 8.69835C15.2886 10.1027 14.8547 11.4379 14.0477 12.553Z" fill="#CFD0DD"/>
                                        <path d="M8.09069 4.05978H9.29592C9.67321 4.05978 9.98552 4.35741 10.0442 4.74309H11.0985C11.0315 3.77681 10.2496 3.01175 9.29592 3.01175H8.09069C7.13699 3.01175 6.35516 3.77681 6.28809 4.74309H7.3424C7.39899 4.35532 7.7134 4.05978 8.09069 4.05978Z" fill="#CFD0DD"/>
                                        <path d="M11.103 5.26709H10.055H7.33009H6.28207H4.57379C4.25519 5.26709 3.89676 5.57102 3.70183 5.76176C3.58026 5.90848 3.5572 6.00909 3.56768 6.12228C3.64524 6.87476 4.14619 7.58323 4.99509 8.14078C5.74757 8.63335 6.69289 8.95824 7.72415 9.0819C8.03855 9.11963 8.36344 9.14059 8.69043 9.14059C9.29618 9.14059 9.88729 9.07352 10.4406 8.94566C11.168 8.77798 11.8303 8.50549 12.3879 8.14078C13.2368 7.58323 13.7356 6.87267 13.8153 6.12228C13.8279 6.007 13.765 5.84141 13.6811 5.76176C13.4862 5.57102 13.1278 5.26709 12.8092 5.26709H11.103Z" fill="#CFD0DD"/>
                                        <path d="M12.8508 8.84295C12.3435 9.17622 11.7608 9.44242 11.1278 9.63107C10.3711 9.85954 9.54532 9.97903 8.69222 9.97903C8.63144 9.97903 8.56856 9.97903 8.50777 9.97692C7.01119 9.94759 5.60683 9.54722 4.53363 8.84295C4.08088 8.54531 3.70569 8.20575 3.41224 7.83056C3.34098 7.73833 3.28857 7.7551 3.28857 7.87036V10.7923C3.28857 11.5322 3.86289 12.1338 4.57136 12.1338H10.6604H12.8089C13.0415 12.1338 13.2595 12.0688 13.4461 11.9556C13.8317 11.725 14.0916 11.2911 14.0916 10.7923V7.87248C14.0916 7.7572 14.0392 7.74043 13.968 7.83265C13.6787 8.20573 13.3035 8.54531 12.8508 8.84295Z" fill="#CFD0DD"/>
                                    </svg>
                                </i>
                                <div  class="leading-6 text-[#CFD0DD]">Jobs</div>
                            </a>
                        </li>
                        <li class="flex align-center items-center group mx-2 mb-7">
                            <a href="index.html" class="flex items-start text-xl text-gray-500 font-semibold group-hover:text-blue-500">
                                <i>
                                    <svg class="h-5 w-5 mr-3 fill-[#CFD0DD]" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M18.7672 7.61445L17.3017 2.18982C17.2567 2.0241 17.1873 1.86759 17.1037 1.72022C17.2278 1.54275 17.3017 1.32772 17.3017 1.0948C17.3017 0.490026 16.8113 0 16.2069 0H3.66564C3.06096 0 2.57111 0.490252 2.57111 1.0948C2.57111 1.39736 2.6935 1.6711 2.8923 1.86945C2.81068 2.01397 2.74321 2.1679 2.69924 2.33028L1.23395 7.75491C1.0356 8.48934 1.32375 9.1092 1.8883 9.25685V20H18.2046V9.08073C18.7051 8.89101 18.9537 8.30626 18.7672 7.61445ZM14.0669 3.09883L15.3051 7.6821C15.3241 7.75346 15.3526 7.82184 15.3797 7.89044C14.8267 8.79579 14.0233 9.18897 13.1479 8.97123C12.3794 8.78056 11.8431 8.1908 11.8315 7.77249V3.31006C11.8315 3.23784 11.8206 3.1682 11.81 3.09887H14.0669V3.09883ZM4.69613 7.82279L5.9721 3.09883H8.12061C8.10972 3.1682 8.0991 3.2378 8.0991 3.31001V7.85632L8.09635 7.85497C7.58549 8.82128 6.79588 9.25256 5.93102 9.03766C5.21413 8.85987 4.71434 8.30631 4.71434 7.92113H4.66042C4.67186 7.88796 4.68695 7.85655 4.69613 7.82279ZM13.5921 18.8849H4.78931V15.3639H6.36903C6.52043 15.0222 6.86123 14.7833 7.25928 14.7833C7.65671 14.7833 7.99796 15.0222 8.14909 15.3639H11.3641C11.4093 14.8679 11.8219 14.4781 12.3298 14.4781C12.8373 14.4781 13.25 14.8679 13.2949 15.3639H13.5922V18.8849H13.5921ZM6.60182 14.0963C6.60182 13.7174 6.90945 13.4099 7.28852 13.4099C7.6676 13.4099 7.97496 13.7175 7.97496 14.0963C7.97496 14.4758 7.6676 14.7833 7.28852 14.7833C6.90945 14.7833 6.60182 14.4758 6.60182 14.0963ZM11.6723 13.7912C11.6723 13.4123 11.9797 13.1047 12.3587 13.1047C12.7379 13.1047 13.0453 13.4123 13.0453 13.7912C13.0453 14.1705 12.7378 14.4781 12.3587 14.4781C11.9797 14.4781 11.6723 14.1705 11.6723 13.7912ZM17.3597 19.155H16.2799V12.0309H3.88577V19.155H2.73336V9.30299L2.98142 9.30778C3.56847 9.31967 4.18079 8.87854 4.51242 8.26545C4.70187 8.7238 5.23261 9.15485 5.86364 9.31144C5.98683 9.34195 6.15893 9.37186 6.36076 9.37186C6.85802 9.37186 7.53487 9.18897 8.10118 8.38725C8.11185 9.15128 8.73623 9.49538 9.50758 9.49538H10.423C11.0882 9.49538 11.6419 9.03283 11.7898 8.41287C12.0623 8.78761 12.5381 9.11047 13.0804 9.24478C13.2123 9.27764 13.397 9.30959 13.6129 9.30959C14.1591 9.30959 14.907 9.1027 15.5233 8.18799C15.8615 8.76791 16.4525 9.17817 17.0195 9.1671L17.3597 9.1605V19.155V19.155Z" fill="#CFD0DD"/>
                                    </svg>
                                </i>
                                <div  class="leading-6 text-[#CFD0DD]">Marketplace</div>
                            </a>
                        </li>
                        <li class="flex align-center items-center  group mx-2 ">
                            <a href="index.html" class="flex items-start text-xl text-gray-500 font-semibold group-hover:text-blue-500">
                                <i>
                                    <svg class="h-5 w-5 mr-3 fill-[#CFD0DD]" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <g clip-path="url(#clip0_120_636)">
                                        <path d="M10 0C4.47715 0 0 4.47715 0 10C0 15.5229 4.47715 20 10 20C15.5229 20 20 15.5229 20 10C20 4.47715 15.5229 0 10 0ZM6.8396 4.35547C9.85633 4.36898 12.0833 7.37903 15.6567 5.06713V11.1169C12.7697 14.004 10.0626 9.33178 5.84472 10.4797V15.6445H4.34325V5.06713C5.25033 4.54343 6.07063 4.35203 6.8396 4.35547Z" fill="#CFD0DD"/>
                                        </g>
                                        <defs>
                                        <clipPath id="clip0_120_636">
                                        <rect width="20" height="20" fill="white"/>
                                        </clipPath>
                                        </defs>
                                    </svg>
                                </i>
                                <div  class="leading-6 text-[#CFD0DD]">Pages</div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    """
  end
end
