//
//  MyPageView.swift
//  Memorizing
//
//  Created by 진준호 on 2023/01/05.
//

import SwiftUI

// MARK: 마이페이지 탭에서 가장 메인으로 보여주는 View
struct MyPageView: View {
    @EnvironmentObject var authStore: AuthStore
    @EnvironmentObject var myNoteStore: MyNoteStore
    @EnvironmentObject var notiManager: NotificationManager
    
    @State private var signOutAlertToggle: Bool = false
//    @State private var isShownNickNameToggle: Bool = false
    
    var body: some View {
        
        NavigationStack {

            VStack {
    
    // MARK: - 유저 정보
                VStack(alignment: .leading) {
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("안녕하세요")
                            .font(.headline)
                            .fontWeight(.semibold)
                        Text("\(authStore.user?.nickName ?? "")님!")
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("\(authStore.user?.email ?? "")")
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(.gray2)
                        
                    } // 그리팅메세지
                    
                    .padding(.top, -30)
                    
                    HStack(spacing: 15) {
                        
                        VStack(spacing: 5) {
                            Text("내 암기장")
                                .foregroundColor(.gray2)
                            
                            Text("\(myNoteStore.myWordNotes.count)")
                                .bold()
                        }
                        
                        Divider()
                            .frame(height: 30)
                        
                        VStack(spacing: 5) {
                            Text("내 도장")
                                .foregroundColor(.gray2)
                            
                            Text("\(myNoteStore.calculateStamp(myWordNotes: myNoteStore.myWordNotes))")
                                .bold()
                        }
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color("MainBlue"), lineWidth: 1)
                                    .frame(width: 120, height: 45)
                                Text("내 정보 수정하기")
                                    .foregroundColor(.mainBlack)
                                    .font(.footnote)
                                    .fontWeight(.medium)
                            }
                        }

                    } // 내 암기장개수 . 받은 도장 개수
                    .font(.footnote)
                    .padding(.vertical, 2)
                    
//                    HStack {
//                        Button {
//
//                            // 포인트 충전하기
//
//                        } label: {
//
//                            ZStack {
//                                RoundedRectangle(cornerRadius: 100)
//                                    .foregroundColor(.mainBlue)
//                                    .frame(width: 158, height: 45)
//                                Text("포인트 충전하기")
//                                    .foregroundColor(.white)
//                                    .padding(15)
//                                    .padding(.horizontal, 20)
//                                    .font(.footnote)
//                                    .fontWeight(.medium)
//
//                            }
//
//                        } // 포인트 충전하기 버튼
//
//                        Spacer()
//
//                        Button {
//
//                            // 포인트 선물하기
//
//                        } label: {
//
//                            ZStack {
//                                RoundedRectangle(cornerRadius: 100)
//                                    .stroke(Color("MainBlue"), lineWidth: 1)
//                                    .frame(width: 158, height: 45)
//                                Text("포인트 선물하기")
//                                    .foregroundColor(.gray2)
//                                    .padding(15)
//                                    .padding(.horizontal, 10)
//                                    .font(.footnote)
//                                    .fontWeight(.medium)
//
//                            }
//
//                        } // 포인트 선물하기 버튼
   
//                    } // 충전하기 버튼
//                    .padding(.vertical, 15)
                    
                } // 유저정보
                .padding(.bottom, 10)
                
    // MARK: - 유저 버튼
                VStack {
                    VStack {
                        Divider()
                        
                        NavigationLink {
                            // TODO: 암기장 구매 내역 페이지로 이동
                        } label: {
                            HStack {
                                Text("암기장 구매 내역")
                                    .font(.body)
                                    .fontWeight(.medium)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.title3)
                                    .fontWeight(.light)
                            } // 문의하기
                            .padding(.horizontal, 12)
                            .padding(.vertical, 10)
                            .foregroundColor(.mainBlack)
                        }
                    }

                    VStack {
                        Divider()
                        
                        NavigationLink {
                            // TODO: 암기장 구매 내역 페이지로 이동
                        } label: {
                            HStack {
                                Text("내 정보 수정")
                                    .font(.body)
                                    .fontWeight(.medium)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.title3)
                                    .fontWeight(.light)
                            } // 문의하기
                            .padding(.horizontal, 12)
                            .padding(.vertical, 10)
                            .foregroundColor(.mainBlack)
                        }
                    }
                    
                    VStack {
                        Divider()
                        
                        NavigationLink {
                            // TODO: 암기장 구매 내역 페이지로 이동
                        } label: {
                            HStack {
                                Text("메모라이징 소개")
                                    .font(.body)
                                    .fontWeight(.medium)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.title3)
                                    .fontWeight(.light)
                            } // 문의하기
                            .padding(.horizontal, 12)
                            .padding(.vertical, 10)
                            .foregroundColor(.mainBlack)
                        }
                    }

                    VStack {
                        Divider()
                        
                        NavigationLink {
                            // TODO: 암기장 구매 내역 페이지로 이동
                        } label: {
                            HStack {
                                Text("1:1 문의하기")
                                    .font(.body)
                                    .fontWeight(.medium)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.title3)
                                    .fontWeight(.light)
                            } // 문의하기
                            .padding(.horizontal, 12)
                            .padding(.vertical, 10)
                            .foregroundColor(.mainBlack)
                        }
                    }
                    
                    VStack {
                        Divider()
                        
                        NavigationLink {
                            // TODO: 암기장 구매 내역 페이지로 이동
                        } label: {
                            HStack {
                                Text("서비스 이용 약관")
                                    .font(.body)
                                    .fontWeight(.medium)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.title3)
                                    .fontWeight(.light)
                            } // 문의하기
                            .padding(.horizontal, 12)
                            .padding(.vertical, 10)
                            .foregroundColor(.mainBlack)
                        }
                    }
                    
                    VStack {
                        Divider()
                        
                        NavigationLink {
                            // TODO: 암기장 구매 내역 페이지로 이동
                        } label: {
                            HStack {
                                Text("개인정보 처리 방침")
                                    .font(.body)
                                    .fontWeight(.medium)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.title3)
                                    .fontWeight(.light)
                            } // 문의하기
                            .padding(.horizontal, 12)
                            .padding(.vertical, 10)
                            .foregroundColor(.mainBlack)
                        }
                    }
                    
                    VStack {
                        Divider()
                        
                        Button {
                            signOutAlertToggle.toggle()
                            notiManager.removeAllRequest()
                        } label: {
                            HStack {
                                Text("로그아웃하기")
                                    .font(.body)
                                    .fontWeight(.medium)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.title3)
                                    .fontWeight(.light)
                            } // 문의하기
                            .padding(.horizontal, 12)
                            .padding(.vertical, 10)
                            .foregroundColor(.mainBlack)
                            
                        }
                    }
                    .alert(
                        "로그아웃",
                        isPresented: $signOutAlertToggle
                    ) {
                        HStack {
                            Button {
                                authStore.signOutDidAuth()
                            }label: {
                                Text("로그아웃")
                                    .foregroundColor(.accentColor)
                            }
                            Spacer()
                            Button {
                                
                            }label: {
                                Text("닫기")
                                    .foregroundColor(.black)
                            }
                        }
                    } message: {
                        Text("정말 로그아웃 하시겠습니까?")
                    }
                    
                    Divider()
                    
                    Spacer()
                    
                } // 문의하기, 개인정보 처리 방침
                .frame(maxHeight: .infinity)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image("Logo")
                            .resizable()
                            .frame(width: 35, height: 22)
                            .padding(.leading, 10)
                    }
                    ToolbarItem(placement: .principal) {
                        Text("마이페이지")
                            .font(.title3.bold())
                            .accessibilityAddTraits(.isHeader)
                    }
                }
            }
            .padding(.horizontal, 30)
        }
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MyPageView()
                .environmentObject(AuthStore())
            .environmentObject(MyNoteStore())
        }
    }
}
