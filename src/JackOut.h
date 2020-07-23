/**
 * \file JackOut.h
 * \author Tom Ritchford
 * \date 21 July 2020
 */

#pragma once

#include <stdio>

namespace jack {

/**
     if (gVerboseFlag) std::cout << 23 << " skidoo" << std::endl;

   becomes

     jack::vout() << 23 << "skidoo";
*/

Out& out();
Out& vout();
Out& eout();

// Implementation details follow

class Out {
  public:
    explicit Out(std::ostream* out) : out_(out), isRoot_(true) {}

    template <typename T>
    Out operator<<(const T& x) {
        if (out_)
            *out_ << x;

        return Out(std::move(*this));
    }

    ~Out() {
        if (out_ and not isRoot_)
            *out_ << std::endl;
    }

  private:
    std::ostream* out_;
    const bool isRoot_;

    Out(Out&& other) : out_(out), isRoot_(false) {
        if (not other.isRoot_)
            other.out_ = nullptr;
    }
};

inline Out& out() {
    static Out out(&std::cout);
    return out;
}

inline Out& eout() {
    static Out out(&std::cerr);
    return out;
}

inline Out& vout() {
    static Out out(gVerboseFlag ? &std::cout : nullptr);
    return out;
}

}  // jack
