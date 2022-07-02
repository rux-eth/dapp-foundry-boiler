import { wrapper } from "dist/utils/store";
import { AppProps } from "next/app";
import { useEffect } from "react";
import "../styles/global.css";

function MyApp({ Component, pageProps }: AppProps) {
  useEffect(() => {
    // Remove the server-side injected CSS.
    const jssStyles = document.querySelector("#jss-server-side");
    if (jssStyles) {
      jssStyles.parentElement?.removeChild(jssStyles);
    }
  }, []);

  return (
    /* @ts-ignore */
    <Component {...pageProps} />
  );
}

export default wrapper.withRedux(MyApp);
