Rails.application.routes.draw do
  resources :trangchinhs, only: [:index, :show], path: 'trang-chinh'
  resources :phapluats, only: [:index, :show], path: 'phap-luat'
  resources :congnghes, only: [:index, :show], path: 'cong-nghe'
  resources :doisongs, only:  [:index, :show], path: 'doi-song'
  resources :thethaos, only:  [:index, :show], path: 'the-thao'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Dieu dau tien... Nhung ham kieu nhu mac dinh! Khai bao dau tien... ... Nhung ham khai bao .... dai khai the! Hieu the! No la nhu the... Giong Nhun
  # Day la ngon ngu! Nen cho nen la hehehe.... Phai lam nhu the! Minh bat day me no roi day!
    devise_for :users
  resources :thembaiviets, only: [:index,:create], path: 'them-bai-viet'
  resources :quanlybaiviets, only: [:index,:show,:update], path:'quan-ly-bai-viet'

end
