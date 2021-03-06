! Copyright (c) 2018, NVIDIA CORPORATION.  All rights reserved.
!
! Licensed under the Apache License, Version 2.0 (the "License");
! you may not use this file except in compliance with the License.
! You may obtain a copy of the License at
!
!     http://www.apache.org/licenses/LICENSE-2.0
!
! Unless required by applicable law or agreed to in writing, software
! distributed under the License is distributed on an "AS IS" BASIS,
! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
! See the License for the specific language governing permissions and
! limitations under the License.

!ERROR: No explicit type declared for 'f'
function f()
  implicit none
end

!ERROR: No explicit type declared for 'y'
subroutine s(x, y)
  implicit none
  integer :: x
end

subroutine s2
  implicit none
  block
    !ERROR: No explicit type declared for 'i'
    i = 1
  end block
contains
  subroutine s3
    !ERROR: No explicit type declared for 'j'
    j = 2
  end subroutine
end subroutine
